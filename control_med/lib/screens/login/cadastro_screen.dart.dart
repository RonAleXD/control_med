import 'package:control_med/screens/login/cadastro_form.dart';
import 'package:flutter/material.dart';
    
class CadastroScreenDart extends StatelessWidget {

  const CadastroScreenDart({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
        var altura = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: SingleChildScrollView(child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
                        children: [
                Image.asset(
                  'assets/images/login.png',
                  height: altura * 0.2,
                ),
                const CadastroForm(),
              ],
          ),
        ),),
      ),
    );
  }
}