
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gp/GlobalComponents/copyRight.dart';
import 'package:gp/GlobalComponents/logoandslogen.dart';
import 'package:gp/pages/SignIn/Components/Body.dart';
import 'file:///C:/Users/elmasry/Desktop/gp/lib/pages/SignIn/Components/LoginForm.dart';
import 'package:gp/pages/SignUp.dart';

import '../../Size_Config.dart';
import '../../constraints.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(

          child: Center(
              child: Body()
          ),
        ),
      ),
    );
  }

}
