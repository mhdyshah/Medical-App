// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.pink[100],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Lottie.asset("assets/icons/welcome-people.json"),
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
                  child: Text(
                    "Welcome to our big and great  'Doctor App'",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Aboreto",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
