import 'package:control_med/screens/med_detail_screen.dart';
import 'package:control_med/screens/med_list_screen.dart';
import 'package:control_med/screens/med_new_screen.dart';
import 'package:control_med/utils/app_routes.dart';
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
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MedNew(),//<-
        routes: {
          //AppRoutes.medNew :(_)=>const MedNew(),
          AppRoutes.medList :(_)=>const MedListScreen(),
          AppRoutes.medDetail :(_)=>const MedDetailsScreen(),
        }, 
        );
  }
}
