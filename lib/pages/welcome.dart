import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';
import 'file:///C:/Users/elmasry/Desktop/gp/lib/pages/SignIn/SignIn.dart';

class welcome extends StatefulWidget {



  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder:(BuildContext context) => SignIn()
                )
            )

    );

    SizeConfig().init(context);
    return Scaffold(

      backgroundColor:kPrimaryColor,
      body: SingleChildScrollView(
        child: Center(
            child: WelcomeLogoAndSlogen()
        ),
      ),
    );;
  }

  Column WelcomeLogoAndSlogen() {
    return Column(
            children: [
              SizedBox(
                height: getProptionateScreenHeight(130.0),
              ),
              Image(
                image:AssetImage('assets/logo.png'),
                height:getProptionateScreenWidth(256.0),
                width: getProptionateScreenWidth(256.0),
              ),
              SizedBox(
                height: getProptionateScreenHeight(66.0),
              ),

              Image(
                image:AssetImage('assets/slogen.png'),
                height:getProptionateScreenWidth(107),
                width: getProptionateScreenWidth(197.0),
              ),
            ],
          );
  }
}

