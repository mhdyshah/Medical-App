// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medicalapp/home.dart';
import 'package:medicalapp/screen.dart';

class CategoryCard extends StatelessWidget {
  final icon;
  final String categoryName;
  const CategoryCard({Key? key, required this.icon, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ScreenPage();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFFF5F6FF),
          ),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset(
                icon,
                height: size.height * 0.055,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                categoryName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF32313a),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
