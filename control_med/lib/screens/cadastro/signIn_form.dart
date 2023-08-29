import 'package:control_med/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastroForm extends StatelessWidget {
  const CadastroForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
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
            /////
            const SizedBox(
              height: 20,
            ),
            ////
            ///
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                prefix: Icon(Icons.person_outlined),
                labelText: "Email",
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            /////
            const SizedBox(
              height: 20,
            ),
            ////
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

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
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
                  if (_formKey.currentState!.validate()) {
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
