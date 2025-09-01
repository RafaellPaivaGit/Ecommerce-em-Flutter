import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(Icons.sort, size: 30, color: Color.fromARGB(255, 34, 1, 255)),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 20),
            child: Text(
              "DevHub Shop",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 34, 1, 255),
              ),
            ),
          ),
          Spacer(),
          Badge(
            padding: EdgeInsets.all(7),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 35,
                color: Color.fromARGB(255, 34, 1, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
