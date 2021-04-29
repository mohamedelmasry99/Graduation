import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../Size_Config.dart';
import '../constraints.dart';
class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(

          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: getProptionateScreenHeight(14.0),
                ),
                Image(
                  image:AssetImage('assets/logo.png'),
                  height:getProptionateScreenWidth(122.0),
                  width: getProptionateScreenWidth(122.0),
                ),
                SizedBox(
                  height: getProptionateScreenHeight(20.0),
                ),

                Image(
                  image:AssetImage('assets/slogen.png'),
                  height:getProptionateScreenWidth(80),
                  width: getProptionateScreenWidth(152.0),
                  color: kPrimaryColor,
                ),
                SizedBox(height: getProptionateScreenHeight(30.0),),
                Text(
                  'Log in and get your info.',
                  style: TextStyle(
                    fontSize: getProptionateScreenWidth(22.0),
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(
                  height: getProptionateScreenHeight(20.0),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
                  width: getProptionateScreenWidth(302),
                  height: getProptionateScreenHeight(48),
                  child: ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    style: TextButton.styleFrom(

                      backgroundColor: kPrimaryColor,
                      //minimumSize: Size(40,30),


                    ),
                    child: Row(
                      children: [
                        SizedBox(width: getProptionateScreenWidth(20),),
                        Image(
                          image:AssetImage('assets/gooogle.png'),
                          height:getProptionateScreenHeight(37.0),
                          width: getProptionateScreenHeight(37.0),

                        ),
                        SizedBox(width: getProptionateScreenWidth(40),),
                        Text(
                          'Sign In with Google',
                          style: TextStyle(
                            fontSize: getProptionateScreenWidth(18.0),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),


                  ),
                ),
                SizedBox(height: getProptionateScreenHeight(10.0),),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
                  width: getProptionateScreenWidth(302),
                  height: getProptionateScreenHeight(48),
                  child: ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    style: TextButton.styleFrom(

                      backgroundColor: kPrimaryColor,
                      //minimumSize: Size(40,30),


                    ),
                    child: Row(
                      children: [
                        SizedBox(width: getProptionateScreenWidth(20),),
                        Image(
                          image:AssetImage('assets/facebook.png'),
                          height:getProptionateScreenHeight(37.0),
                          width: getProptionateScreenHeight(25.0),

                        ),
                        SizedBox(width: getProptionateScreenWidth(40),),
                        Text(
                          'Sign In with Facebook',
                          style: TextStyle(
                            fontSize: getProptionateScreenWidth(18.0),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),


                  ),
                ),

                SizedBox(height: getProptionateScreenHeight(20.0),),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
                    child: Row(
                      children: [
                        SizedBox(width: getProptionateScreenWidth(32.0),),
                        Container(
                          width: getProptionateScreenWidth(128),
                          height: 1.0,
                          color: Colors.grey,

                        ),
                        SizedBox(width: getProptionateScreenWidth(10.0),),
                        Text(
                          'Or',
                          style: TextStyle(
                            fontSize: getProptionateScreenWidth(15),
                          ),
                        ),
                        SizedBox(width: getProptionateScreenWidth(10.0),),
                        Container(
                          width: getProptionateScreenWidth(128),
                          height: 1.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                ),
                SizedBox(height: getProptionateScreenHeight(20.0),),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
                  height: getProptionateScreenHeight(50.0),
                  child: TextFormField(
                    validator:  (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Username or Email',
                        suffixIcon: Icon(
                          Icons.person,
                          size: getProptionateScreenWidth(20),
                         ),
                        labelStyle: TextStyle(
                          color: kSecondaryColor,
                          fontSize: getProptionateScreenWidth(15)
                        ),

                      ),
                  ),
                ),
                SizedBox(height: getProptionateScreenHeight(5.0),),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
                  height: getProptionateScreenHeight(50.0),
                  child: TextFormField(
                    validator:  (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Password',
                      suffixIcon: Icon(
                        Icons.security,
                        size: getProptionateScreenWidth(20),
                      ),
                      labelStyle: TextStyle(
                          color: kSecondaryColor,
                          fontSize: getProptionateScreenWidth(15)
                      ),

                    ),
                  ),
                ),
                SizedBox(height: getProptionateScreenHeight(15.0),),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
                  width: getProptionateScreenWidth(302),
                  height: getProptionateScreenHeight(58),
                  child: ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    style: TextButton.styleFrom(

                      backgroundColor: kPrimaryColor,
                      //minimumSize: Size(40,30),


                    ),
                    child:
                        Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: getProptionateScreenWidth(18.0),
                            color: Colors.white,
                          ),
                        ),




                  ),
                ),
                SizedBox(height: getProptionateScreenHeight(15.0),),
                GestureDetector(
                  child: Text(
                      'Register as Client',
                      style: TextStyle(
                        color: kSecondaryColor,
                      ),
                  ),
                ),
                SizedBox(height: getProptionateScreenHeight(45.0),),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(20)) ,
                  child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:'Medical insurance uses cookies for analytics,'
                                ' personalizedcontent and ads. By using Personal '
                                "Trainer's Services, youagree to this use of cookies .",
                            style: TextStyle(
                              color: kPrimaryColor,


                            ),
                                ),
                          TextSpan(
                              text:"Learn More",
                            style: TextStyle(
                              color: kSecondaryColor,


                            ),
                          ),


                        ],
                      ),
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: getProptionateScreenHeight(15.0),

                    ),
                    textAlign: TextAlign.center,

                    )
                ),
                SizedBox(height: getProptionateScreenHeight(45.0),),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
