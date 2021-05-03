import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:gp/GlobalComponents/custom_text.dart';
import 'package:gp/pages/SignIn/SignIn.dart';
import 'package:gp/pages/SignUp.dart';

class SliderPage extends StatelessWidget {
  Widget slidePage(var img, var text) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/$img',
          fit: BoxFit.fill,
          color: Colors.black38,
          colorBlendMode: BlendMode.darken,
        ),
        Positioned(
          bottom: 200.0,
          left: 75,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: "Merriweather",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Carousel(
              autoplayDuration: Duration(seconds: 3),
              showIndicator: false,
              boxFit: BoxFit.cover,
              images: [
                slidePage('1.jpg', 'Find your personal medical information'),
                slidePage('1.jpg', 'Find your lab results easily'),
                slidePage('1.jpg', 'Find your nearest medical insurance company'),
              ],
            ),
            Positioned(
              bottom: 120,
              left: 60,
              right: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 50,
                    child: TextButton(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontFamily: "Merriweather",
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => SignIn()));
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue[300]),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'New to se7tk?',
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: "Merriweather",
                      ),
                      SizedBox(width: 10),
                      GestureDetector(onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => SignUp()));
                      },
                        child: CustomText(
                          text: 'SIGN UP',
                          color: Colors.blue,
                          fontSize: 18,
                          fontFamily: "Merriweather",
                        ),
                      ),
                    ],
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
