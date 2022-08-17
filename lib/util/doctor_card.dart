// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;
  final String doctorExperience;

  const DoctorCard({
    Key? key,
    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
    required this.doctorExperience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            // picture of doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                doctorImagePath,
                height: 100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // rating out of 5
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                Text(
                  rating,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // doctor name
            Text(
              doctorName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            // doctor title
            Text(
              doctorProfession + "  " + doctorExperience,
            ),
          ],
        ),
      ),
    );
  }
}
