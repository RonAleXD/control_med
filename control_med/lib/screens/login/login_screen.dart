// ignore_for_file: avoid_unnecessary_containers

import 'package:control_med/consts/images_strings.dart';
import 'package:flutter/material.dart';

import 'login_form.dart';

class LoginScreenDart extends StatelessWidget {
  const LoginScreenDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                dLogin,
                height: altura * 0.2,
              ),
              const LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}

