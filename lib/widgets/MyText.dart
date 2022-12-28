import 'package:flutter/material.dart';
import 'package:food_app_v2/function/toColor.dart';

class MyText extends StatelessWidget
{
  late String ? text;
  late double ? size;
  late String ? fontFamily;
  late FontWeight fontWeight;
  late String ? color;
  late bool ? overflow;
  int ? maxLines;
  bool ? centerText;

  MyText({
    this.text="Simple Text",
    this.size=18.0,
    this.fontFamily="Gilroy",
    this.fontWeight=FontWeight.w600,
    this.color="#181725",
    this.overflow=false,
    this.maxLines=1,
    this.centerText=false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.text.toString(),
        textAlign: (this.centerText == true) ? TextAlign.center : TextAlign.left,
        maxLines: this.maxLines,
        overflow: (this.overflow != false) ? TextOverflow.ellipsis : null,
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