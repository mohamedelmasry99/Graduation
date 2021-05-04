import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

enum Gender { Male, Female }
class GenderFormWidget extends StatefulWidget {
  const GenderFormWidget({
    Key key,
  }) : super(key: key);

  @override
  _GenderFormWidgetState createState() => _GenderFormWidgetState();
}

class _GenderFormWidgetState extends State<GenderFormWidget> {
  Gender gender = Gender.Male;
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
      height: getProptionateScreenHeight(50.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Gender',
              style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: getProptionateScreenWidth(15)
              ),
            ),
          ),
          Expanded(
            child: Row(

              children: [
                Expanded(
                  
                  child: ListTile(
                    title: const Text('Female'),
                    leading: Radio<Gender>(
                      value: Gender.Female,
                      groupValue: gender,
                      onChanged: (Gender value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),

                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('Male'),
                    leading: Radio<Gender>(
                      value: Gender.Male,
                      groupValue: gender,
                      onChanged: (Gender value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                  ),
                ),


              ],

            ),
          ),
        ],
      ),
    );
  }
}
