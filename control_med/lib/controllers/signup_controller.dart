import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  final nome = TextEditingController() ;
  final email = TextEditingController() ;
  final senha = TextEditingController() ;

  
  void registrarUser(String email, String password){
    
  }
}