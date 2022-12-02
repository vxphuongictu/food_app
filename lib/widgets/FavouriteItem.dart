import 'package:flutter/material.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class FavouriteItem extends StatefulWidget
{
  @override
  State<FavouriteItem> createState() {
    return _FavouriteItem();
  }
}

class _FavouriteItem extends State<FavouriteItem>
{
  @override
  Widget build(BuildContext context) {
    return myItem();
  }

  Widget myItem()
  {
    return Container(
      padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                width: 1,
                color: '#E2E2E2'.toColor(),
              )
          )
      ),
      child: Row(
        children: [
          SizedBox(
            width: 70.0,
            height: 70.0,
            child: Image.asset("assets/images/product.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: MyText(
                    text: "Bell Pepper Red",
                    size: 16.0,
                    fontFamily: "Gilroy-Bold",
                    fontWeight: FontWeight.w100,
                  ),
                ),
                MyText(
                  text: "1kg, Price",
                  fontFamily: "Gilroy-Medium",
                  size: 14.0,
                  color: '#7C7C7C',
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyText(
                    text: "\$1.50",
                    size: 16.0,
                  ),
                  IconButton(
                    onPressed: ()=> {},
                    icon: const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 30.0,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}