import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DevHub Shop'),
        backgroundColor: Color.fromARGB(255, 34, 1, 255),
      ),
      drawer: const NavigationDrawer(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [buildHeader(), buildMenuItems()],
        ),
      ),
    );
    Widget buildHeader(BuildContext context) => Container(
      color: Color.fromARGB(255, 34, 1, 255),
      padding: EdgeInsets.only(
        top: 24 + MediaQuery.of(context).padding.top,
        bottom: 24,
      ),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 52,
            backgroundImage: NetworkImage(
              'https://pbs.twimg.com/media/ExUgVx7WQAMcTV9.jpg',
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Rafaell Paiva',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          Text(
            'rafaell@email.com.br',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );

    Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacementNamed('/home');
            },
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
              Navigator.pop(context);
              Navigator.of(context).pushReplacementNamed('/detail');
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Logout'),
            subtitle: Text('Finalizar sessão'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ],
      ),
    );
  }
}
