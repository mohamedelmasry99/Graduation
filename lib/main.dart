import 'package:flutter/material.dart';
import 'file:///C:/Users/elmasry/Desktop/gp/lib/pages/SignIn.dart';
import 'package:gp/pages/SignUp.dart';

import 'package:gp/pages/welcome.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
      '/':(context)=>welcome(),
      '/SignIn':(context)=>SignIn(),
      '/SignUp':(context)=>SignUp(),

    },
  ));
}
