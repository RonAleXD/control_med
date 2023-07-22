import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text('placeholder'),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Usuário'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/newUser');
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Nova medicação'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/newMed');
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Todas as medicações'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/medList');
              },
            ),
            ListTile(
              leading: const Icon(Icons.construction),
              title: const Text('Configurações'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            )
          ],
        ),
      ),
      body: Container(),
    );
  }
}
