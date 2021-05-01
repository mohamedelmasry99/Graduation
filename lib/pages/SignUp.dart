
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../Size_Config.dart';
import '../constraints.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String Email='Username or Email',Password='Password',password,email,FullName='Fullname',fullName;
  final List<String>errors=[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(

          child: Center(
            child: Column(
              children: [

                LogoAndSlogen(),

                SizedBox(height: getProptionateScreenHeight(30.0),),
                SignUpBody(),

                CopyRight(),



              ],
            ),
          ),
        ),
      ),
    );
  }

  Column CopyRight() {
    return Column(
      children: [
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
    );
  }

  Column SignUpBody() {
    return Column(
      children: [
        Text(
          'Sign Up and Fill your info.',
          style: TextStyle(
            fontSize: getProptionateScreenWidth(22.0),
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        SizedBox(
          height: getProptionateScreenHeight(20.0),
        ),
        SocialMEdiaSignUp(),
        //email
        SignUpForm(),
      ],
    );
  }

  Column SignUpForm() {

    return Column(
      children: [
        EmailTextForm(),
        SizedBox(height: getProptionateScreenHeight(5.0),),
        //start user
        FullNameTextForm(),
        //end user
        SizedBox(height: getProptionateScreenHeight(5.0),),
        PasswordTextForm(),
        SizedBox(height: getProptionateScreenHeight(15.0),),
        RegisterButton(),
        SizedBox(height: getProptionateScreenHeight(15.0),),
        GestureDetector(
          onTap: (){
            Navigator.pushReplacementNamed(context, '/SignIn');
          },
          child: Text(
            'Login as Client',

            style: TextStyle(
              color: kSecondaryColor,
            ),
          ),
        ),
        SizedBox(height: getProptionateScreenHeight(45.0),),
      ],
    );
  }

  Container FullNameTextForm() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
        height: getProptionateScreenHeight(50.0),
        child: TextFormField(
        keyboardType: TextInputType.name,
        onSaved: (newValue)=>fullName=newValue,
        onChanged: (value){
        if(value.isNotEmpty&&errors.contains(kNamelNullError)){
        setState(() {
        errors.remove(kNamelNullError);
        });
        }

        },
        validator: (value){
        if(value.isEmpty&&!errors.contains(kEmailNullError)){
        setState(() {
        errors.add(kNamelNullError);
        });
        return "";
        }

        return null;
        },
        onTap: (){
        setState(() {
        FullName=' ';
        });

        },


        decoration: InputDecoration(

        border: UnderlineInputBorder(),
        labelText: FullName,
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
      );
  }

  Container RegisterButton() {
    return Container(
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
            'Register',
            style: TextStyle(
              fontSize: getProptionateScreenWidth(18.0),
              color: Colors.white,
            ),
          ),




        ),
      );
  }

  Container PasswordTextForm() {
    return Container(

        margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
        height: getProptionateScreenHeight(50.0),
        child: TextFormField(
          obscureText: true,
          onSaved: (newValue)=>password=newValue,
          onChanged:  (value){
            if(value.isNotEmpty&&errors.contains(kPassNullError)){
              setState(() {
                errors.remove(kPassNullError );
              });
            }
            else if(value.length>=8&&errors.contains(kShortPassError)){
              setState(() {
                errors.remove(kShortPassError);
              });
            }
            return null;
          },
          validator:(value){
            if(value.isEmpty&&!errors.contains(kPassNullError)){
              setState(() {
                errors.add(kPassNullError );
              });
              return "";
            }
            else if(value.length<8&&!errors.contains(kShortPassError)){
              setState(() {
                errors.add(kShortPassError);
              });
              return "";
            }
            return null;
          },
          onTap: (){
            setState(() {
              Password='';
            });

          },


          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            labelText: Password,
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
      );
  }

  Container EmailTextForm() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(40)),
        height: getProptionateScreenHeight(50.0),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue)=>email=newValue,
          onChanged: (value){
            if(value.isNotEmpty&&errors.contains(kEmailNullError)){
              setState(() {
                errors.remove(kEmailNullError);
              });
            }
            else if(emailValidatorRegExp.hasMatch(value)&&errors.contains(kInvalidEmailError)){
              setState(() {
                errors.remove(kInvalidEmailError);
              });
            }
          },
          validator: (value){
            if(value.isEmpty&&!errors.contains(kEmailNullError)){
              setState(() {
                errors.add(kEmailNullError);
              });
              return "";
            }
            else if(!emailValidatorRegExp.hasMatch(value)&&!errors.contains(kInvalidEmailError)){
              setState(() {
                errors.add(kInvalidEmailError);
              });
              return "";
            }
            return null;
          },
          onTap: (){
            setState(() {
              Email=' ';
            });

          },


          decoration: InputDecoration(

            border: UnderlineInputBorder(),
            labelText: Email,
            suffixIcon: Icon(
              Icons.email,
              size: getProptionateScreenWidth(20),
            ),
            labelStyle: TextStyle(
                color: kSecondaryColor,
                fontSize: getProptionateScreenWidth(15)
            ),

          ),
        ),
      );
  }

  Column SocialMEdiaSignUp() {
    return Column(
      children: [
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
                  'Sign Up with Google',
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
                  'Sign Up with Facebook',
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
      ],
    );
  }

  Column LogoAndSlogen() {
    return Column(
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

      ],
    );
  }
}
