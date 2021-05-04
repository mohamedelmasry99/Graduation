import 'package:flutter/material.dart';
import 'file:///C:/Users/elmasry/Desktop/gp/lib/pages/SignIn/SignIn.dart';
import 'file:///C:/Users/elmasry/Desktop/gp/lib/pages/SignUp/SignUp.dart';

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
