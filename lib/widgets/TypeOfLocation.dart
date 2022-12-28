import 'package:flutter/material.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class TypeOfLocation extends StatefulWidget
{
  late String ? name;
  late bool ? isSelected;

  TypeOfLocation({super.key, this.name, this.isSelected = false});

  @override
  State<TypeOfLocation> createState() {
    return _TypeOfLocation();
  }
}

class _TypeOfLocation extends State<TypeOfLocation>
{
  @override
  Widget build(BuildContext context) {
    return TypeOfLocation();
  }

  Widget TypeOfLocation()
  {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: (this.widget.isSelected == false) ? '#e6e6e6'.toColor() : Colors.white,
        border: Border.all(
          color: (this.widget.isSelected == true) ? 'ff6600'.toColor() : Colors.transparent,
        ),
      ),
      child: MyText(
        text: "${this.widget.name}",
        size: 10,
        color: (this.widget.isSelected == true) ? 'ff6600' : null,
      ),
    );
  }

}