
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
          Row(
           //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: SizeConfig.screenWidth*0.20,),
              Container(child: titlesInMainApp(text: 'Health Care',)),
              SizedBox(width: SizeConfig.screenWidth*0.10,),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/Profile');
                },
                child: Container(
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: kliteColor,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth*0.05,),
            child: Divider(
              color: kliteColor,
              thickness: 0.5,

            ),
          ),

          SizedBox(
            height:getProptionateScreenHeight(10) ,
          ),
          HomePanner(),
          SizedBox(
            height:getProptionateScreenHeight(10) ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Icon(Icons.arrow_back_ios_rounded),
              Container(
                padding: EdgeInsets.fromLTRB(3, 0, 3 , 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: kSecondaryliteColor.withOpacity(0.3),
                  // boxShadow:[ BoxShadow( color: Colors.grey,
                  //   spreadRadius: 2,
                  //   blurRadius: 2,
                  //   offset: Offset(1,1),
                  // ),


                    //]
                ),
                
                width: SizeConfig.screenWidth*0.85 ,
                //margin: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth*0.1),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeFeatures(
                        containerColor: kliteColor.withOpacity(0.55),
                        image:'assets/med.jpg',
                        textMAin:'OverView',
                        textMin:'Medicine',
                        textColor:kPrimaryColor,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/Explore');
                        },
                        child: HomeFeatures(
                          containerColor: kSecondaryColor.withOpacity(0.5),
                          image:'assets/beat.jpg',
                          textMAin:'Measure',
                          textMin:'Heart rhythm',
                          textColor:Colors.white,
                        ),
                      ),
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
                ),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),

          
          SizedBox(height: getProptionateScreenHeight(10),)





        ],
      ),
    );
  }
}
