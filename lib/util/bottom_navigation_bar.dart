// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:medicalapp/screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Color(0xFFfcfeff),
      height: 55,
      color: Color(0xFFAADFCD),
      onTap: (index) {},
      items: [
        GestureDetector(
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
          child: Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
        ),
        Icon(
          Icons.favorite,
          color: Colors.red[800],
          size: 30,
        ),
        Icon(
          Icons.settings,
          color: Colors.white,
          size: 30,
        ),
        GestureDetector(
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
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
