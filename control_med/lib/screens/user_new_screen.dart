import 'package:flutter/material.dart';

class UserNewScreen extends StatelessWidget {
  UserNewScreen({Key? key}) : super(key: key);

  final TextEditingController _controladorNomeUsuario = TextEditingController();
  //final TextEditingController _controladorMedicacoes = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Usuário'),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextField(
            decoration: const InputDecoration(labelText:'Nome do Usuário' ),
            controller: _controladorNomeUsuario,
          ),
          // TextField(
          //   decoration: const InputDecoration(labelText:'Nome do ' ),
          //   controller: _controladorMedicacoes,
          // ),
          ],
        ),
      ),
    );
  }
}
