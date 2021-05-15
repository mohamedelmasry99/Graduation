
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class ListofCategoriesWidget extends StatefulWidget {
  const ListofCategoriesWidget({
    Key key,
  }) : super(key: key);

  @override
  _ListofCategoriesWidgetState createState() => _ListofCategoriesWidgetState();
}

class _ListofCategoriesWidgetState extends State<ListofCategoriesWidget> {

  @override

  Widget build(BuildContext context) {

    return ListView(

      scrollDirection: Axis.horizontal,

      children: [
        CategoriesButtonWidget(text: 'Doctors',),
        CategoriesButtonWidget(text: 'Medical labs',),
        CategoriesButtonWidget(text:'Radiology labs',),
        CategoriesButtonWidget(text: 'Hospitals',),
        CategoriesButtonWidget(text: 'Pharmacies',),
      ],

    );
  }
}





class CategoriesButtonWidget extends StatefulWidget {
  const CategoriesButtonWidget({
    Key key, this.text,
  }) : super(key: key);
  final String text;

  @override
  _CategoriesButtonWidgetState createState() => _CategoriesButtonWidgetState();
}

class _CategoriesButtonWidgetState extends State<CategoriesButtonWidget> {



  @override
  Color textcolor=kPrimaryColor,backColor=kliteColor;


  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        setState(() {
          textcolor=Colors.white;
          backColor=kPrimaryColor;
        });
      },

      child: Container(

        margin: EdgeInsets.only(right: getProptionateScreenWidth(5)),
        padding: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
        height:getProptionateScreenHeight(30) ,
        //width: getProptionateScreenWidth(115),
        decoration: new BoxDecoration(
          color: backColor,
          borderRadius:BorderRadius.circular(10),
          border: Border.all(width: 1.0, color:textcolor),

        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                color:textcolor,
                fontSize: getProptionateScreenWidth(14),
                fontWeight: FontWeight.bold,
                fontFamily: mainFont
            ),
          ),
        ),
      ),
    );
  }
}
