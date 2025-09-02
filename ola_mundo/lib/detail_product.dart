import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  static String routeName = "/detail_product";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: 40,
          width: 40,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/shoes.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            alignment: Alignment.centerLeft,
            child: Text(
              "Product Title",
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(255, 89, 103, 126),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "show here discription of the product",
              style: TextStyle(fontSize: 20, color: Colors.grey[400]),
            ),
          ),
        ],
      ),
    );
  }
}
