import 'package:control_med/models/medicamentos.dart';
import 'package:flutter/material.dart';

class MedNew extends StatelessWidget {
  MedNew({Key? key}) : super(key: key);

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorDosagem = TextEditingController();
  final TextEditingController _controladorQtd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de medicação'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              decoration: const InputDecoration(labelText:'Nome do medicamento'),
              controller: _controladorNome,
            ),
            TextField(
              decoration: const InputDecoration(labelText:'Dosagem do medicamento' ),
              controller: _controladorDosagem,
            ),
            TextField(
              decoration: const InputDecoration(labelText:'Quantidade restante em estoque' ),
              keyboardType: TextInputType.number,
              controller: _controladorQtd,
            ),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text('Salvar'),
                  onPressed: () {
                    final String nome = _controladorNome.text;
                    final String dosagem = _controladorDosagem.text;
                    final double? qtdRestante =
                        double.tryParse(_controladorQtd.text);
                    final Medicamentos medicamentoNovo = Medicamentos(
                        nome: nome,
                        dosagem: dosagem,
                        qtdRestante: qtdRestante!);
                  },
                ),
                ElevatedButton(
                  child: const Text('Limpar'),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
