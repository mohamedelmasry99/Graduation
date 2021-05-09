
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class SearchbarWidget extends StatelessWidget {
  const SearchbarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth*0.9,
      height: getProptionateScreenHeight(60.0),

      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),

      ),
      child: TextField(
        onChanged: (value){

        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Search for your service",
          prefixIcon: Icon(Icons.search),
          suffixIcon: GestureDetector(
              onTap: (){
                //filteration in search
              },
              child: Icon(Icons.settings_input_component)),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProptionateScreenWidth(10),
            vertical: getProptionateScreenWidth(9),
          ),


        ),
      ),

    );
  }
}
