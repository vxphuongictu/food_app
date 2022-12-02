/*
 * Don’t have an account? Singup
 * Already have an account? Singup
 */

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app_v2/function/toColor.dart';


class BottomText extends StatelessWidget
{

  late String ? text;
  late String ? textLink;
  late dynamic ? ontap;

  BottomText({this.text, this.textLink, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text.rich(
        TextSpan(
            text: (this.text != null) ? this.text : '',
            children: [
              TextSpan(
                  text: (this.textLink != null) ? this.textLink : '',
                  style: TextStyle(
                    color: '#53B175'.toColor(),
                    fontSize: 14.0,
                    fontFamily: "Gilroy-Medium",
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {
                    (this.ontap != null) ? this.ontap : null;
                  }
              ),
            ]
        ),
      ),
    );
  }
}