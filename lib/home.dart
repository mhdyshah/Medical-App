// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalapp/screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFfcfeff),
      body: Column(
        children: [
          SvgPicture.asset(
            "assets/icons/doctor.svg",
            height: size.height * 0.6,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "All specialists in one app",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xFF32313a),
              ),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Find your doctor and make an appointment with one tap!",
              maxLines: 2,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(
            height: 58,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Color(0xFF8A88E2),
              minimumSize: Size(88, 36),
              padding: EdgeInsets.symmetric(horizontal: 88, vertical: 18),
              textStyle: TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ScreenPage();
                  },
                ),
              );
            },
            child: Text(
              "Get Started",
            ),
          ),
        ],
      ),
    );
  }
}
