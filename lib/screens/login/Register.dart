/*
 * Register Screen
 */

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app_v2/screens/login/AuthBanner.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/widgets/MyInput.dart';
import 'package:food_app_v2/screens/login/BottomText.dart';

class Register extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Register();
  }
}

class _Register extends State<StatefulWidget>
{

  bool ? hiddenPwd    = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Column(
          children: [
            AuthBanner(
              bgImage: Image.asset('assets/images/bg.png', fit: BoxFit.cover,),
              logo: Image.asset('assets/images/logo.png', fit: BoxFit.cover,),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.0, right: 25.0),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: MyText(
                        text: "Register",
                        color: "#181725",
                        size: 26.0
                    ),
                  ),
                  MyText(
                      text: "Enter your credentials to continue",
                      fontFamily: "Gilroy-Medium",
                      fontWeight: FontWeight.w300,
                      color: "#7c7c7c",
                      size: 16.0
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: MyText(
                      text: "Username",
                      size: 16.0,
                      fontFamily: 'Gilroy',
                      color: '#7c7c7c',
                    ),
                  ),
                  MyInput(
                    fontSize: 18.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: MyText(
                      text: "Email",
                      size: 16.0,
                      fontFamily: 'Gilroy',
                      color: '#7c7c7c',
                    ),
                  ),
                  MyInput(
                    fontSize: 18.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: MyText(
                      text: "Password",
                      size: 16.0,
                      fontFamily: 'Gilroy',
                      color: '#7c7c7c',
                    ),
                  ),
                  MyInput(
                    fontSize: 18.0,
                    obscureText: true,
                    icon: (this.hiddenPwd!) ? Icons.add : Icons.remove_red_eye_outlined,
                    onpress: changeIcon(),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(top: 20.0),
                    child: readTerms()
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: MyButton(
                      text: 'Sign Up',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.0),
                    alignment: Alignment.center,
                    child: BottomText(
                      text: "Already have an account? ",
                      textLink: "Singup",
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget readTerms()
  {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20.0),
        child: Text.rich(
          TextSpan(
              text: "By continuing you agree to our ",
              style: const TextStyle(
                color: Color.fromRGBO(124, 124, 124, 1),
                fontSize: 14.0,
                fontFamily: "Gilroy-Medium",
              ),
              children: [
                TextSpan(
                    text: "Terms of Service",
                    style: const TextStyle(
                      color: Color.fromRGBO(83, 177, 117, 1),
                      fontSize: 14.0,
                      fontFamily: "Gilroy-Medium",
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      print('Terms of Service');
                    }
                ),
                const TextSpan(
                  text: " and",
                  style: TextStyle(
                    color: Color.fromRGBO(124, 124, 124, 1),
                    fontSize: 14.0,
                    fontFamily: "Gilroy-Medium",
                  ),
                ),
                TextSpan(
                    text: " Privacy Policy.",
                    style: const TextStyle(
                      color: Color.fromRGBO(83, 177, 117, 1),
                      fontSize: 14.0,
                      fontFamily: "Gilroy-Medium",
                    ),
                    recognizer: TapGestureRecognizer()..onTap = (){
                      print("Privacy Policy");
                    }
                ),
              ]
          ),
        )
    );
  }

  changeIcon()
  {
    return this.hiddenPwd = (this.hiddenPwd == true) ? false : true;
  }
}