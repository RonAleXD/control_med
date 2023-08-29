// ignore_for_file: unused_local_variable

import 'package:control_med/consts/images_strings.dart';
import 'package:control_med/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          'Placeholder',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:const  Color.fromARGB(255, 199, 225, 243),
            ),
            child: IconButton(
              onPressed: () {
                SignupController.instance.logout();
              },
              icon: const Image(image: AssetImage(dLogin)),
            ),
          )
        ],
      ),

      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         child: Text('placeholder'),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.person),
      //         title: const Text('Usuário'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/newUser');
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.add),
      //         title: const Text('Nova medicação'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/newMed');
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.list),
      //         title: const Text('Todas as medicações'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/medList');
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.construction),
      //         title: const Text('Configurações'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/settings');
      //         },
      //       )
      //     ],
      //   ),
      // ),
      body: const SingleChildScrollView(),
    );
  }
}
