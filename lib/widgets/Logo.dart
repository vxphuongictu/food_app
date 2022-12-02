/*
 * Logo in home screen
 */


import 'package:flutter/material.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class Logo extends StatelessWidget
{
  late Image ? image;
  late IconData ? icon;
  late String ? location;

  Logo({
    this.image,
    this.icon,
    this.location
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 8.3),
          alignment: Alignment.center,
          child: (this.image) != null ? this.image : SizedBox(),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (this.icon != null) Container(
                margin: EdgeInsets.only(bottom: 5.0, right: 5.0),
                child: Icon(this.icon, size: 18.0, color: '#393636'.toColor()),
              ),
              if (this.location != null)  MyText(text: this.location, color: '#4C4F4D', size: 18.0)
            ],
          ),
        ),
      ],
    );
  }
}