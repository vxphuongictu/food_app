import 'package:flutter/material.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class FavouriteItem extends StatefulWidget
{

  late String ? productName;
  late String ? productDescription;
  late double ? productPrice;
  late String ? thumbnails;

  FavouriteItem({this.productName, this.productDescription, this.productPrice, this.thumbnails});

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
            child: (this.widget.thumbnails == null || this.widget.thumbnails == "null") ? Image.asset("assets/images/product.png") : Image.network("${this.widget.thumbnails}"),
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
                    text: "${this.widget.productName}",
                    size: 16.0,
                    fontFamily: "Gilroy-Bold",
                    fontWeight: FontWeight.w100,
                  ),
                ),
                MyText(
                  text: "${this.widget.productDescription}",
                  fontFamily: "Gilroy-Medium",
                  size: 14.0,
                  color: '#7C7C7C',
                  overflow: true,
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
                    text: "\$${this.widget.productPrice}",
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