import 'package:control_med/screens/bem_vindo_screen.dart';
import 'package:control_med/screens/login_screen.dart';
import 'package:control_med/screens/med_detail_screen.dart';
import 'package:control_med/screens/med_list_screen.dart';
import 'package:control_med/screens/med_new_screen.dart';
import 'package:control_med/screens/settings_screen.dart';
import 'package:control_med/screens/user_new_screen.dart';
import 'package:control_med/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controle de Medicamentos',
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
        '/': (_) => const BemVindoScreen(),
        //const HomePage(), // trocar por login
        '/newMed': (_) => MedNew(),
        '/newUser': (_) => UserNewScreen(),
        '/settings': (_) => const SettingsScreen(),
        '/medDetail': (_) => const MedDetailsScreen(),
        '/medList': (_) => const MedListScreen(),
      }, //<-
    );
  }
}
