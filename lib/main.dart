import 'package:flutter/material.dart';



import 'package:gp/pages/SignIn/SignIn.dart';
import 'package:gp/pages/SignUp/SignUp.dart';

import 'package:gp/pages/welcome.dart';


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
