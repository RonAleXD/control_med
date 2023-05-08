import 'package:flutter/material.dart';

class MedListScreen extends StatelessWidget {
  const MedListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Horários'),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Text('$index');
          },
        ));
  }
}
