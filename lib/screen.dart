// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:medicalapp/util/app_bar.dart';
import 'package:medicalapp/util/bottom_navigation_bar.dart';
import 'package:medicalapp/util/category_card.dart';
import 'package:medicalapp/util/doctor_card.dart';
import 'package:medicalapp/util/feeling_card.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFCFEFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app bar
              AppBarMethod(),
              SizedBox(
                height: 25,
              ),
              // card -> how do u feel?
              FeelingCard(),
              SizedBox(
                height: 10,
              ),
              // search bar
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: AnimSearchBar(
                  width: size.width * 0.89,
                  textController: textController,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  color: Color(0xFFF5F6FF),
                  helpText: "How can we help you?",
                  autoFocus: true,
                  animationDurationInMilli: 1500,
                  onSuffixTap: () {
                    setState(
                      () {
                        textController.clear();
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //horizontal listview -> category: dentist, surgery, etc...
              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryCard(
                      icon: "assets/icons/dental-checkup.png",
                      categoryName: "Dentist",
                    ),
                    CategoryCard(
                      icon: "assets/icons/surgery.png",
                      categoryName: "Surgeon",
                    ),
                    CategoryCard(
                      icon: "assets/icons/orthopedist.png",
                      categoryName: "Orthopedist",
                    ),
                    CategoryCard(
                      icon: "assets/icons/doctorpro.png",
                      categoryName: "General Practitioner",
                    ),
                    CategoryCard(
                      icon: "assets/icons/cardiologist.png",
                      categoryName: "Cardiologist",
                    ),
                    CategoryCard(
                      icon: "assets/icons/pediatrician.png",
                      categoryName: "Pediatrician",
                    ),
                    CategoryCard(
                      icon: "assets/icons/obstetrical.png",
                      categoryName: "Obstetricians",
                    ),
                    CategoryCard(
                      icon: "assets/icons/endocrinologist.png",
                      categoryName: "Endocrinologist",
                    ),
                    CategoryCard(
                      icon: "assets/icons/neurologist.png",
                      categoryName: "Neurologist",
                    ),
                    CategoryCard(
                      icon: "assets/icons/breathing.png",
                      categoryName: "Pulmonologist",
                    ),
                    CategoryCard(
                      icon: "assets/icons/eye-test.png",
                      categoryName: "Ophthalmologist",
                    ),
                    CategoryCard(
                      icon: "assets/icons/kidney.png",
                      categoryName: "Urologist",
                    ),
                    CategoryCard(
                      icon: "assets/icons/sore-throat.png",
                      categoryName: "Otolaryngologist",
                    ),
                    CategoryCard(
                      icon: "assets/icons/dermatologist.png",
                      categoryName: "Dermatologist",
                    ),
                    CategoryCard(
                      icon: "assets/icons/nutritionist.png",
                      categoryName: "Nutritionist",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: CategoryCard(
                        icon: "assets/icons/psychiatrist.png",
                        categoryName: "Psychiatrist",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //doctor list
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Doctors List",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
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
                      child: Text(
                        "see all",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // doctor's card
              Container(
                height: 240,
                // color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DoctorCard(
                      doctorImagePath: "assets/images/doctor1.jpg",
                      rating: "4.5",
                      doctorName: "Dr. Nastaran Sadeghi",
                      doctorProfession: "Dentist",
                      doctorExperience: "5 y.e.",
                    ),
                    DoctorCard(
                      doctorImagePath: "assets/images/doctor2.jpg",
                      rating: "4.7",
                      doctorName: "Dr. Karen Shakiba",
                      doctorProfession: "Neurologist",
                      doctorExperience: "6 y.e.",
                    ),
                    DoctorCard(
                      doctorImagePath: "assets/images/doctor5.jpg",
                      rating: "4.9",
                      doctorName: "Dr. Mohammad Farahani",
                      doctorProfession: "Psychiatrist",
                      doctorExperience: "10 y.e.",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DoctorCard(
                        doctorImagePath: "assets/images/doctor3.jpg",
                        rating: "4.6",
                        doctorName: "Dr. Saeid Asghari",
                        doctorProfession: "Neurologist",
                        doctorExperience: "6 y.e.",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // bottom navigation bar
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
