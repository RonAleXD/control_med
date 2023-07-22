import 'package:flutter/material.dart';

class CadastroForm extends StatelessWidget {
  const CadastroForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
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
                onPressed: () {},
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
                onPressed: () {},
                child: const Text("Login"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
