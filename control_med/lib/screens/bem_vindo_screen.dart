import 'package:control_med/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class BemVindoScreen extends StatelessWidget {
  const BemVindoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/login.png',
              height: altura * 0.6,
            ),
            Column(
              children: [
                Text(
                  'Entre no aplicativo ou cadastre-se!',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Get .to(() => const LoginScreenDart()),
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(elevation: 1),
                    onPressed: () {},
                    child: const Text('Cadastrar'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
