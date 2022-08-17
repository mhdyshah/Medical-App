// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medicalapp/home.dart';
import 'package:medicalapp/welcome/intro_screens/page1.dart';
import 'package:medicalapp/welcome/intro_screens/page2.dart';
import 'package:medicalapp/welcome/intro_screens/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // controller to keep track of which page we're on
  PageController _controller = PageController();

  // keep track of if we are on last page or not
  bool lastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // page view
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                lastPage = (index == 2);
              });
            },
            children: [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text("Skip"),
                ),
                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),

                // next or done
                lastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                        child: Text("Done"),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text("Next"),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
