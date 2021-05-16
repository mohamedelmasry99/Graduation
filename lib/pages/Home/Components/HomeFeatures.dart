
import 'package:flutter/material.dart';
import 'package:gp/Size_Config.dart';
import 'package:gp/constraints.dart';

class HomeFeatures extends StatelessWidget {
  const HomeFeatures({
    Key key, this.image, this.textMAin, this.textMin , this.textColor, this.containerColor,
  }) : super(key: key);
  final String image,textMAin,textMin;
  final Color textColor,containerColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth*0.35,
      height: SizeConfig.screenWidth*0.35,

      child: Card(

        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Container(
              color: containerColor,

            ),
            Column(
              children: [
                SizedBox(
                  height: getProptionateScreenHeight(70),
                ),
                Center(
                  child: Text(
                    textMAin,
                    style: TextStyle(
                        fontFamily: mainFont,
                        color: textColor,
                        fontSize: getProptionateScreenWidth(23),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(
                  height: getProptionateScreenHeight(20),
                ),
                Center(
                  child: Text(
                    textMin,
                    style: TextStyle(
                      fontFamily: mainFont,
                      color: textColor,
                      fontSize: getProptionateScreenWidth(18),
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.fromLTRB(5, 10, 5, 0),

      ),

    );
  }
}

