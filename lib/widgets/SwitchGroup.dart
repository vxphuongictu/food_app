/*
 * Dependencies
 * flutter_switch: ^0.3.2
 */

import 'package:flutter/material.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:flutter_switch/flutter_switch.dart';


class SwitchGroup extends StatefulWidget
{

  late String ? label;
  late bool isOn;
  Function callback;

  SwitchGroup({this.label, this.isOn = false, required this.callback});

  @override
  State<SwitchGroup> createState() {
    return _SwitchGroup();
  }
}

class _SwitchGroup extends State<SwitchGroup>
{

  final double _sizeText    = 16.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Row(
        children: [
          Expanded(
            child: MyText(
              text: "${this.widget.label}",
              size: this._sizeText,
            ),
          ),
          switchButton()
        ],
      ),
    );
  }

  Widget switchButton()
  {
    return FlutterSwitch(
      width: 50.0,
      height: 25.0,
      valueFontSize: 13.0,
      toggleSize: 15.0,
      value: this.widget.isOn,
      borderRadius: 30.0,
      padding: 5.0,
      activeColor: Colors.green,
      onToggle: (val) {
        setState(() {
          this.widget.isOn = val;
          this.widget.callback(val);
        });
      },
    );
  }
}