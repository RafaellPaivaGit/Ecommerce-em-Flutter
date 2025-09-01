import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';
import 'package:ola_mundo/cadastro_page.dart';
import 'package:ola_mundo/detail_page.dart';
import 'package:ola_mundo/login_page.dart';
import 'package:ola_mundo/recuperar_senha.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        {
          return MaterialApp(
            theme: ThemeData(
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
              '/detail': (context) => DetailPage(),
              '/cadastro': (context) => CadastroPage(),
              '/recuperar_senha': (context) => RecuperarSenha(),
            },
          );
        }
      },
    );
  }
}
