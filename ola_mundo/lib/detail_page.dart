import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        backgroundColor: const Color.fromARGB(255, 202, 122, 216),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                'https://pbs.twimg.com/media/ExUgVx7WQAMcTV9.jpg',
              ),
            ),
            accountName: Text('Rafaell Paiva'),
            accountEmail: Text('rafaell@emil.com.br'),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  'https://pbs.twimg.com/media/ExUgVx7WQAMcTV9.jpg',
                ),
              ),
              accountName: Text('Rafaell Paiva'),
              accountEmail: Text('rafaell@email.com.br'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Tela de inicio'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.deck),
              title: Text('Detail'),
              subtitle: Text('Detalhes'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/detail');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
