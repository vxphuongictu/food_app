/*
 * Banner in login, register screen
 */


import 'package:flutter/material.dart';


class AuthBanner extends StatelessWidget
{
  late dynamic ? bgImage;
  late dynamic ? logo;

  AuthBanner({
    this.bgImage,
    this.logo
  });

  @override
  Widget build(BuildContext context) {
    return _Banner();
  }

  Widget _Banner()
  {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (this.bgImage != null) Container(
            width: double.infinity,
            child: this.bgImage,
          ),
          if (this.logo != null) Container(
            child: this.logo,
          ),
        ],
      ),
    );
  }
}