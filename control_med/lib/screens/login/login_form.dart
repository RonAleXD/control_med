// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import '../../controllers/signup_controller.dart';
import '../forgotPassword/forgot_password_screen.dart';
import 'package:get/get.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _continueConnected = false;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final _formKey = GlobalKey<FormState>();
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                prefix: Icon(Icons.person_outlined),
                labelText: "Email",
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: controller.senha,
              decoration: const InputDecoration(
                  prefix: Icon(Icons.fingerprint),
                  labelText: "Senha",
                  hintText: "Senha",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(
                  value: _continueConnected,
                  onChanged: (newValue) {
                    setState(() {
                      _continueConnected = newValue!;
                    });
                  },
                ),
                const Text("Continuar conectado?")
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            ///esqueceu a senha
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    context: context,
                    builder: (context) => Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enviar confirmação',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              Get.to(() => const ForgetPasswordScreen());
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.shade200),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.mail_outline_rounded,
                                    size: 60,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      Text(
                                        'Enviar confirmação',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                child: const Text("Esqueceu a senha?"),
              ),
            ),
            ////
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  SignupController.instance.login(
                      controller.email.text.trim(), controller.senha.text);
                },
                child: const Text("Login"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
