import 'package:flutter/material.dart';
import 'package:food_app_v2/function/toColor.dart';

class MyText extends StatelessWidget
{
  late String ? text;
  late double ? size;
  late String ? fontFamily;
  late FontWeight fontWeight;
  late String ? color;

  MyText({
    this.text="Simple Text",
    this.size=18.0,
    this.fontFamily="Gilroy",
    this.fontWeight=FontWeight.w600,
    this.color="#181725"
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.text.toString(),
        style: TextStyle(
          fontWeight: this.fontWeight,
          fontSize: this.size,
          color: this.color.toString().toColor(),
          fontFamily: this.fontFamily,
        ),
      ),
    );
  }
}