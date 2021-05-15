import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names



class Model extends ChangeNotifier{
 var SelectedCategory=0;
 void change(int i){
  this.SelectedCategory=i;
  notifyListeners();
  
 }

 Model();
}
Model modelCategory=new Model();