// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalapp/screen.dart';

class FeelingCard extends StatelessWidget {
  const FeelingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFffe0f4),
        ),
        child: Row(
          children: [
            // animation or cute pic
            Expanded(
              child: SvgPicture.asset(
                "assets/icons/medical.svg",
                height: size.height * 0.2,
                width: size.width * 0.8,
              ),
            ),

            SizedBox(
              width: 20,
            ),
            // how do u feel? + get startted button
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How do you feel?",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF32313a),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Fill out your medical card right now",
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Color(0xFF8A88E2),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 15, fontStyle: FontStyle.normal),
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
            ),
          ],
        ),
      ),
    );
  }
}
