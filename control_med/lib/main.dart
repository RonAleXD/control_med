import 'package:control_med/screens/med_new_screen.dart';
import 'package:control_med/themes/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controle de Medicamentos',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: MedNew(), //<-
    );
  }
}
