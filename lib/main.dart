import 'package:flutter/material.dart';
import 'package:gp/pages/SignIn.dart';
import 'package:gp/pages/welcome.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
      '/':(context)=>welcome(),
      '/SignIn':(context)=>SignIn(),

    },
  ));
}
