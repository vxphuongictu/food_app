import 'package:flutter/material.dart';
import 'package:food_app_v2/widgets/InputLabel.dart';

class MyInput extends StatefulWidget
{
  late String ? placeholder;
  late double ? fontSize;
  late String ? fontFamily;
  late bool ? obscureText;
  late IconData ? icon;
  late IconData ? perfix;
  late String ? label;
  late dynamic onpress;
  late TextEditingController ? valueInput;
  late bool ? inputBorder;

  MyInput({
    this.placeholder=null,
    this.fontSize=18.0,
    this.fontFamily="Gilroy-Medium",
    this.obscureText=false,
    this.icon=null,
    this.label=null,
    this.onpress=null,
    this.valueInput=null,
    this.inputBorder=true,
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
    return Column(
      children: [
        (this.widget.label != null) ? InputLable(label: this.widget.label) : SizedBox(),
        TextField(
          controller: this.widget.valueInput,
          style: TextStyle(
              fontSize: this.widget.fontSize,
              fontFamily: this.widget.fontFamily,
          ),
          decoration: InputDecoration(
            border: (this.widget.inputBorder == true) ? null : InputBorder.none,
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
        )
      ],
    );
  }
}