
import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/titlesInMainApp.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';
import 'package:gp/pages/Explore/components/categorieslist.dart';
import 'package:gp/pages/Home/Components/HomePanner.dart';
import 'package:gp/pages/Home/Components/HomeFeatures.dart';

import '../../../GlobalComponents/searchBarWidget.dart';

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
          SearchbarWidget(color: kSecondaryliteColor.withOpacity(0.2),),
          SizedBox(
            height:getProptionateScreenHeight(15) ,
          ),
          titlesInMainApp(text: 'Health Care',),
          SizedBox(
            height:getProptionateScreenHeight(10) ,
          ),
          HomePanner(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeFeatures(
                containerColor: kliteColor.withOpacity(0.55),
                image:'assets/med.jpg',
                textMAin:'OverView',
                textMin:'Medicine',
                textColor:kPrimaryColor,
              ),
              HomeFeatures(
                containerColor: kSecondaryColor.withOpacity(0.5),
                image:'assets/beat.jpg',
                textMAin:'Measure',
                textMin:'Heart rhythm',
                textColor:Colors.white,
              ),

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeFeatures(
                containerColor: kPrimaryColor.withOpacity(0.55),
                image:'assets/labs.jpg',
                textMAin:'Results',
                textMin:'Labs',
                textColor:kliteColor,
              ),
              HomeFeatures(
                containerColor: kliteColor.withOpacity(0.3),
                image:'assets/appointmnents.jpg',
                textMAin:'Scheduled',
                textMin:'Appointments',
                textColor:kPrimaryColor,
              ),

            ],
          ),
          SizedBox(height: getProptionateScreenHeight(10),)





        ],
      ),
    );
  }
}
