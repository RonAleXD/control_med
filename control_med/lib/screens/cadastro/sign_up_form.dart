import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:control_med/controllers/signup_controller.dart';

class CadastroForm extends StatefulWidget {
  const CadastroForm({
    Key? key,
  }) : super(key: key);

  @override
  State<CadastroForm> createState() => _CadastroFormState();
}

class _CadastroFormState extends State<CadastroForm> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.nome,
              decoration: const InputDecoration(
                prefix: Icon(Icons.person_outlined),
                labelText: "Nome",
                hintText: "Nome",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
              obscureText: (_showPassword == true) ? false : true,
              controller: controller.senha,
              decoration: const InputDecoration(
                prefix: Icon(Icons.fingerprint),
                labelText: "Senha",
                hintText: "Senha",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: (_showPassword == true) ? false : true,
              controller: controller.confirmsenha,
              decoration: const InputDecoration(
                prefix: Icon(Icons.fingerprint),
                labelText: "Confirme sua Senha",
                hintText: "Confirme sua Senha",
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: _showPassword,
                  onChanged: (newValue) {
                    setState(() {
                      _showPassword = newValue!;
                    });
                  },
                ),
                const Text("Mostrar senha")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    SignupController.instance.cadastrarUsuario(
                        controller.email.text.trim(), controller.senha.text);
                  }
                },
                child: const Text("Cadastrar"),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: null,
                child: Text("Já possui uma conta?"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    SignupController.instance.cadastrarUsuario(
                      controller.email.text.trim(),
                      controller.senha.text.trim(),
                    );
                  }
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
