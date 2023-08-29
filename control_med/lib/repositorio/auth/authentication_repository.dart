// ignore_for_file: avoid_print

import 'package:control_med/repositorio/auth/exceptions/signup_failure_EmailPassword.dart';
import 'package:control_med/screens/login/welcome_screen.dart';
import 'package:control_med/screens/user/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const BemVindoScreen())
        : Get.offAll(
            () => const HomePage(),
          );
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String senha) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: senha);
      firebaseUser.value != null
          ? Get.offAll(() => const HomePage())
          : Get.to(() => const BemVindoScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignupFailureEmailPassword.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${e.message}');
      throw ex;
    } catch (_) {
      const ex = SignupFailureEmailPassword();
      print('EXCEPTION - ${ex.mensagem}');
      throw ex;
    }
  }
///////////////////////////////////////

  Future<void> loginUserWithEmailAndPassword(String email, String senha) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: senha);
      firebaseUser.value != null
          ? Get.offAll(() => const HomePage())
          : Get.to(() => const BemVindoScreen());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('Email não registrado.');
      } else if (e.code == 'wrong-password') {
        print('Senha incorreta.');
      }
    } catch (_) {}
  }

///////////////////////////////////////////
  Future<void> logout() async => await _auth
      .signOut()
      .then((value) => Get.to(() => const BemVindoScreen()));
}
