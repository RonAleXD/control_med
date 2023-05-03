import 'package:flutter/material.dart';

class MedNew extends StatelessWidget {
  const MedNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Título'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Digite o nome do medicamento: '),
                  TextField(),
                ],
                
              )
            ],
          ),
        ));
  }
}
