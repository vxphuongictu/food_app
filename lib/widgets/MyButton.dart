/*
 * All button have background and icon
 */

import 'package:flutter/material.dart';
import 'package:food_app_v2/function/toColor.dart';

class MyButton extends StatefulWidget
{
  late double ? width;
  late double ? height;
  late String ? bgColor;
  late double ? borderRadius;
  late String ? textColor;
  late String ? text;
  late String ? description;
  late String ? bgDescription;
  late String ? textColorDescription;
  late IconData ? icon;
  late double ? textSize;
  late String ? fontFamily;
  late FontWeight ? fontWeight;

  MyButton({
    this.width=double.infinity,
    this.height=67,
    this.bgColor="#53B175",
    this.borderRadius=19.0,
    this.textColor="#ffffff",
    this.text=null,
    this.description=null,
    this.icon=null,
    this.bgDescription="#489E67",
    this.textColorDescription="#FCFCFC",
    this.textSize=16.0,
    this.fontFamily="Gilroy",
    this.fontWeight=FontWeight.w600,
  });

  @override
  State<MyButton> createState() {
    return _MyButton();
  }
}

class _MyButton extends State<MyButton>
{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.widget.width,
      height: this.widget.height,
      decoration: BoxDecoration(
        color: this.widget.bgColor.toString().toColor(),
        borderRadius: BorderRadius.all(
          Radius.circular(this.widget.borderRadius!.toDouble())
        )
      ),
      child: Container(
        child: (this.widget.text != null) ? Row(
          children: [
            (this.widget.icon != null) ? Container(
              width: 50.0,
              child: Icon(this.widget.icon, color: this.widget.textColor.toString().toColor())
            ) : const SizedBox(
              width: 50.0,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  this.widget.text.toString(),
                  style: TextStyle(
                    color: this.widget.textColor.toString().toColor(),
                    fontFamily: this.widget.fontFamily,
                    fontSize: this.widget.textSize,
                    fontWeight: this.widget.fontWeight,
                  ),
                ),
              ),
            ),
            (this.widget.description != null) ? Container(
              margin: EdgeInsets.only(right: 24.0),
              padding: EdgeInsets.only(top: 2.0, bottom: 2.0, left: 5.0, right: 5.0),
              decoration: BoxDecoration(
                color: this.widget.bgDescription.toString().toColor(),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4.0)
                )
              ),
              child: Text(
                this.widget.description.toString(),
                style: TextStyle(
                    color: this.widget.textColorDescription.toString().toColor()
                ),
              ),
            ): const SizedBox(
              width: 50.0,
            ),
          ],
        ) : Icon(this.widget.icon, color: this.widget.textColor.toString().toColor()),
      ),
    );
  }
}