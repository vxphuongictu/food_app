import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/core/config.dart';

class FindProductBoxItem extends StatelessWidget
{

  late String ? productName;
  late String ? thumbnails;
  late Color ? bgColor;
  late Color ? borderColor;

  FindProductBoxItem({this.productName, this.thumbnails, this.bgColor, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return boxItem();
  }

  Widget boxItem()
  {
    return Container(
      height: 200.0,
      width: 175.0,
      decoration: BoxDecoration(
        color: (this.bgColor) != null ? this.bgColor : Color.fromRGBO(83, 177, 117, 0.1),
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(
          color: Color.fromRGBO(83, 177, 117, 0.7),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 30.0, right: 30.0),
        child: Column(
          children: [
            Container(
              height: 80.0,
              margin: EdgeInsets.only(top: 28.0, bottom: 28.0),
              child: (this.thumbnails) != null ? Image.network('${host}${this.thumbnails}') : Image.asset('assets/images/product.png'),
            ),
            MyText(
              text: (this.productName) != null ? this.productName : '',
              maxLines: 2,
              size: 16.0,
              fontFamily: 'Gilroy-Bold',
              fontWeight: FontWeight.w100,
              overflow: true,
              centerText: true,
            )
          ],
        ),
      )
    );
  }
}