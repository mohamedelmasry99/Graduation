
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
      width: SizeConfig.screenWidth*0.45,
      height: SizeConfig.screenWidth*0.45,
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
            Center(
              child: Text(
                textMAin,
                style: TextStyle(
                    fontFamily: mainFont,
                    color: textColor,
                    fontSize: getProptionateScreenWidth(28),
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 115, 0, 0),
              child: Text(
                textMin,
                style: TextStyle(
                  fontFamily: mainFont,
                  color: textColor,
                  fontSize: getProptionateScreenWidth(22),
                  fontWeight: FontWeight.w400,

                ),
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
    );
  }
}

