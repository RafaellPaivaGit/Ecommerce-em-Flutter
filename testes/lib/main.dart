import 'package:flutter/material.dart';

class main1 extends StatefulWidget {
  const main1({super.key});
  @override
  State<main1> createState() => Main();
}

class Main extends State<main1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: Center(
          child: Container(
            child: Image.network(
              'https://e7.pngegg.com/pngimages/472/178/png-clipart-tinder-new-logo-tech-companies-thumbnail.png',
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(main1());
}
