import 'package:flutter/material.dart';

import 'package:gp/pages/SignUp.dart';

import 'package:gp/pages/welcome.dart';

import 'pages/SignIn.dart';



void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
      '/':(context)=>Welcome(),
      '/SignIn':(context)=>SignIn(),
      '/SignUp':(context)=>SignUp(),

    },
  ));
}
