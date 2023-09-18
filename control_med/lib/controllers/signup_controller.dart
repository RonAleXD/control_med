import 'package:control_med/repositorio/auth/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  final nome = TextEditingController() ;
  final email = TextEditingController() ;
  final senha = TextEditingController() ;
  final confirmsenha = TextEditingController() ;

  void login(String email, String password){
    AuthenticationRepository.instance.loginUserWithEmailAndPassword(email, password);

  }
  void cadastrarUsuario(String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
  void logout(){
    AuthenticationRepository.instance.logout();
  }
}