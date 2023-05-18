import 'package:control_med/models/medicamentos.dart';
import 'package:control_med/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class MedNew extends StatelessWidget {
  MedNew({Key? key}) : super(key: key);

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorDosagem = TextEditingController();
  final TextEditingController _controladorQtd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Cadastro de medicação'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://1.bp.blogspot.com/-BmyjFOQt2RA/XvwA_Or2J6I/AAAAAAAAEBc/fsDG7TtXiiojDooZpzfcmWarQsPX1vq-wCK4BGAsYHg/d/medical-wallpaper-hd-3.png'),
                    fit: BoxFit.fitWidth),
              ),
            ),
            FractionallySizedBox(
              heightFactor: 0.4,
              widthFactor: 1,
              // child: Container(
              //color: lightColorScheme.secondaryContainer.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome do medicamento',
                      labelStyle:
                          TextStyle(color: lightColorScheme.surfaceTint),
                    ),
                    controller: _controladorNome,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Dosagem do medicamento',
                      labelStyle:
                          TextStyle(color: lightColorScheme.surfaceTint),
                    ),
                    controller: _controladorDosagem,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Quantidade restante em estoque',
                      labelStyle:
                          TextStyle(color: lightColorScheme.surfaceTint),
                    ),
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
                          // ignore: unused_local_variable
                          final Medicamentos medicamentoNovo = Medicamentos(
                              //id: ,
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
            //fim container ),
          ],
        ),
      ),
    );
  }
}
