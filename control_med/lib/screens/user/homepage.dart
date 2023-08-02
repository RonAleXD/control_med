import 'package:flutter/material.dart';
    
class HomPage extends StatelessWidget {

  const HomPage({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}