import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';
import 'package:flutter/material.dart';
import 'package:gp/FiltersResult.dart';
import 'package:gp/constraints.dart';

import 'package:toggle_bar/toggle_bar.dart';

import '../../../categorieslistdata.dart';


class CategoriesWidget extends StatefulWidget {

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
   @override

   void initState() {



     super.initState();
   }

  @override
  Widget build(BuildContext context) {

    return  DefaultTabController(

        length: 6,
        child: Column(
          children: <Widget>[
          ButtonsTabBar(

            backgroundColor: kPrimaryColor,
            unselectedBackgroundColor: kliteColor,
            unselectedLabelStyle: TextStyle(
                color: kPrimaryColor,
              fontFamily: mainFont,
            ),
            borderWidth: 1,
            unselectedBorderColor: kPrimaryColor,
            labelStyle:TextStyle(
              fontFamily: mainFont,
                fontSize: 15,

                color: Colors.white,
                fontWeight: FontWeight.bold

            ),
            radius: 10,
            height: 50,
            contentPadding: EdgeInsets.symmetric(horizontal: 8),

            tabs: [
              Tab(
                  child: GestureDetector(
                      child: Text(categoriesdata[0].name,),
                      onTap:(){
                        setState(() {

                          modelCategory.change(categoriesdata[0].id);

                          print(modelCategory.SelectedCategory);
                        });
                      }
                  )
              ),
              Tab(

                  child: GestureDetector(
                    child: Text(categoriesdata[1].name,),
                  onTap:(){
                    setState(() {
                      modelCategory.change(categoriesdata[1].id);

                      print(modelCategory.SelectedCategory);
                    });
                  }
                  )
              ),
              Tab(
                  text: categoriesdata[2].name,
                  // child: GestureDetector(
                  //     onTap:(){
                  //       setState(() {
                  //         SelectedCategory= categoriesdata[2].id;
                  //       });
                  //     }
                  // )
              ),
              Tab(
                  text: categoriesdata[3].name
                  ,
                  // child: GestureDetector(
                  //     onTap:(){
                  //       setState(() {
                  //         SelectedCategory= categoriesdata[3].id;
                  //       });
                  //     }
                  // )
              ),
              Tab(
                  text: categoriesdata[4].name,
                  // child: GestureDetector(
                  //     onTap:(){
                  //       setState(() {
                  //         SelectedCategory= categoriesdata[4].id;
                  //       });
                  //     }
                  // )
              ),
              Tab(
                text: categoriesdata[5].name,
                  // child: GestureDetector(
                  //     onTap:(){
                  //       setState(() {
                  //         SelectedCategory= categoriesdata[5].id;
                  //       });
                  //     }
                  // )
              ),
            ],
          ),

      // Expanded(
      //   child: TabBarView(
      //     children: <Widget>[
      //       Center(
      //         child: Text(categoriesdata[0].name),
      //       ),
      //       Center(
      //         child:  Text(categoriesdata[1].name),
      //       ),
      //       Center(
      //         child:  Text(categoriesdata[2].name),
      //       ),
      //       Center(
      //         child: Text(categoriesdata[3].name),
      //       ),
      //       Center(
      //         child:  Text(categoriesdata[4].name),
      //       ),
      //       Center(
      //         child:  Text(categoriesdata[5].name),
      //       ),
      //     ],
      //   ),)
          ],
      ),
    );
  }
}
