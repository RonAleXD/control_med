// ignore_for_file: unused_import

import 'package:control_med/firebase_options.dart';
import 'package:control_med/repositorio/auth/authentication_repository.dart';
import 'package:control_med/screens/login/bem_vindo_screen.dart';
import 'package:control_med/screens/med/med_detail_screen.dart';
import 'package:control_med/screens/med/med_list_screen.dart';
import 'package:control_med/screens/med/med_new_screen.dart';
import 'package:control_med/screens/settings_screen.dart';
import 'package:control_med/screens/user/homepage.dart';
import 'package:control_med/screens/user/home_page.dart';
import 'package:control_med/screens/user/user_new_screen.dart';
import 'package:control_med/themes/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controle de Medicamentos',
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
        '/': (_) => const BemVindoScreen(), // trocar por login
        '/newMed': (_) => MedNew(),
        '/newUser': (_) => UserNewScreen(),
        '/settings': (_) => const SettingsScreen(),
        '/medDetail': (_) => const MedDetailsScreen(),
        '/medList': (_) => const MedListScreen(),
      }, //<-
    );
  }
}
