import 'package:flutter/material.dart';


class MyInput extends StatefulWidget
{

  late String ? placeholder;
  late double ? fontSize;
  late String ? fontFamily;
  late bool ? obscureText;
  late IconData ? icon;
  late IconData ? perfix;
  late String ? label;
  late dynamic ? onpress;

  MyInput({
    this.placeholder=null,
    this.fontSize=18.0,
    this.fontFamily="Gilroy-Medium",
    this.obscureText=false,
    this.icon=null,
    this.label=null,
    this.onpress=null
  });

  @override
  State<MyInput> createState() {
    return _MyInput();
  }
}


class _MyInput extends State<MyInput>
{
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: this.widget.fontSize,
        fontFamily: this.widget.fontFamily
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: (this.widget.placeholder != null) ? this.widget.placeholder.toString() : '',
        suffix: (this.widget.icon != null) ? IconButton(
            onPressed: () => setState(() {
              print(this.widget.onpress);
              if (this.widget.onpress != null) this.widget.onpress;
            }),
            icon: Icon(
              this.widget.icon,
              size: this.widget.fontSize,
            ),
          ) : null ,
        ),
      obscureText: this.widget.obscureText!,
    );
  }
}