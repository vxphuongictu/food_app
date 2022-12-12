/*
 * Login Screen
 */

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:food_app_v2/screens/login/AuthBanner.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/screens/login/BottomText.dart';
import 'package:food_app_v2/controllers/login.dart';

class Login extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
}

class _Login extends State<StatefulWidget>
{

  bool ? hiddenPwd      = false;
  late bool ? login;

  TextEditingController username = TextEditingController(text: "admin@admin.com");
  TextEditingController password = TextEditingController(text: "password");

  @override
  void initState() {
    EasyLoading.dismiss();
  }

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
                        text: "Login",
                        color: "#181725",
                        size: 26.0
                    ),
                  ),
                  MyText(
                      text: "Enter your emails and password",
                      fontFamily: "Gilroy-Medium",
                      fontWeight: FontWeight.w300,
                      color: "#7c7c7c",
                      size: 16.0
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
                  TextField(
                    controller: username,
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
                  TextField(
                    controller: password,
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(top: 20.0),
                    child: MyText(
                      text: 'Forgot Password?',
                      size: 14.0,
                      fontFamily: 'Gilroy-Medium',
                      color: '#181725',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: InkWell(
                      onTap: () async {
                        EasyLoading.show(status: 'Login...');
                        this.login = await loginController(email: this.username.text, password: this.password.text);
                        EasyLoading.dismiss();
                        if (this.login == false) {
                          EasyLoading.showToast('Username or password invalid!');
                        } else {
                          Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                        }
                      },
                      child: MyButton(
                        text: 'Log In',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.0),
                    alignment: Alignment.center,
                    child: BottomText(
                      text: "Don’t have an account? ",
                      textLink: "Signup",
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

  changeIcon()
  {
    return this.hiddenPwd = (this.hiddenPwd == true) ? false : true;
  }
}