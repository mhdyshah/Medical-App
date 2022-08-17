// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppBarMethod extends StatelessWidget {
  const AppBarMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // name
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Color(0xFF32313a),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Mehdi Shahsavari",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF32313a),
                  fontWeight: FontWeight.bold,
                  fontFamily: "DynaPuff",
                ),
              ),
            ],
          ),
          // profile picture
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.purple[100],
              image: DecorationImage(
                image: AssetImage("assets/images/doctor4.jpg"),
                fit: BoxFit.fitHeight,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
