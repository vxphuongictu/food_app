import 'package:flutter/material.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class InputLable extends StatelessWidget
{

  String ? label;

  InputLable({this.label});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30.0),
      child: MyText(
        text: (this.label != null) ? this.label : "Enter your label",
        size: 16.0,
        fontFamily: 'Gilroy',
        color: '#7c7c7c',
      ),
    );
  }
}