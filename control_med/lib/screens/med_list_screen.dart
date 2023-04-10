import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class MedListScreen extends StatelessWidget {
  const MedListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Horários'),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.medNew);
            },
            icon: const Icon(Icons.add),
          ),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Text('$index');
          },
        ));
  }
}
