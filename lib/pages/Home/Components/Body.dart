
import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/titlesInMainApp.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';
import 'package:gp/pages/Home/Components/HomePanner.dart';
import 'package:gp/pages/Home/Components/HomeFeatures.dart';

import 'searchBarWidget.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height:getProptionateScreenHeight(15) ,
          ),
          SearchbarWidget(),
          SizedBox(
            height:getProptionateScreenHeight(15) ,
          ),
          titlesInMainApp(text: 'Health Care',),
          SizedBox(
            height:getProptionateScreenHeight(15) ,
          ),
          HomePanner(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeFeatures(
                containerColor: kPrimaryColor.withOpacity(0.2),
                image:'assets/med.png',
                textMAin:'OverView',
                textMin:'Medicine',
                textColor:kPrimaryColor,
              ),
              HomeFeatures(
                containerColor: kliteColor.withOpacity(0.2),
                image:'assets/beat.png',
                textMAin:'Measure',
                textMin:'Heart rhythm',
                textColor:Colors.white,
              ),

            ],
          ),
        ],
      ),
    );
  }
}
