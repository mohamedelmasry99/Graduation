
import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/titlesInMainApp.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';
import 'package:gp/pages/Home/Components/HomePanner.dart';

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
          Container(
            //width: getProptionateScreenWidth(150),
            //height: getProptionateScreenWidth(150),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/med.png',
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    color: kPrimaryColor.withOpacity(0.3),

                  ),
                  Text(
                    'Health Status',
                    style: TextStyle(
                        fontFamily: mainFont,
                        color: kPrimaryColor,
                        fontSize: getProptionateScreenWidth(28),
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}

