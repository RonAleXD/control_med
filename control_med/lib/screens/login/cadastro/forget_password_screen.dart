import 'package:flutter/material.dart';

import '../../../consts/images_strings.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: altura * 0.4,
                // ),
                Image.asset(
                  dForgotPassword,
                  height: altura * 0.2,
                ),
                const SizedBox(height: 10),
                const Text('Digite abaixo seu email'),
                Form(
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          label: Text(
                            'Email',
                            textAlign: TextAlign.center,
                          ),
                          hintText: 'Email',
                          prefix: Icon(Icons.mail_outline_rounded),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Próximo'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
