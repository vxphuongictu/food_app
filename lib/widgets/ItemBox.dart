/*
 * Box item on Home screen, Explore Screen, Beverages
 */

import 'package:flutter/material.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/core/config.dart';


class ItemBox extends StatefulWidget
{

  late int ? productID;
  late String ? thumbnails;
  late String ? title;
  late String ? shortDescription;
  late double ? price;
  late dynamic onpress;

  ItemBox({
    this.productID,
    this.thumbnails,
    this.title,
    this.shortDescription,
    this.price,
    this.onpress,
  });

  @override
  State<ItemBox> createState() {
    return _ItemBox();
  }
}

class _ItemBox extends State<ItemBox>
{
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 173.32,
        height: 248.51,
        margin: const EdgeInsets.only(
            top: 15.0,
            right: 15.0
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(
              width: 1.0,
              color: "#E2E2E2".toColor()
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25.0, bottom: 25.0),
              child: (this.widget.thumbnails != "" && this.widget.thumbnails != null) ? Image.network(
                "${host}${this.widget.thumbnails}",
                width: 100.0,
                height: 80.0,
              ) : Image.asset(
                  'assets/images/product.png',
                  width: 100.0,
                  height: 80.0,
              )
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 14.0, right: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (this.widget.title != "") Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: MyText(text: this.widget.title, fontFamily: 'Gilroy-Bold', size: 16.0, overflow: true,)
                    ),
                    if (this.widget.shortDescription != "") Container(
                      child: MyText(text: this.widget.shortDescription, fontFamily: 'Gilroy-Medium', size: 14.0, color: '#7C7C7C', overflow: true,),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 14.0, right: 14.0, bottom: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (this.widget.price != "") MyText(text: "\$${this.widget.price}", fontFamily: 'Gilroy', size: 18.0, color: '#181725'),
                          InkWell(
                            onTap: () {
                              SharedMyCart().add(
                                productID: this.widget.productID,
                                productName: this.widget.title,
                                productDescription: this.widget.shortDescription,
                                productPrice: this.widget.price,
                                productThumbnails: this.widget.thumbnails
                              );
                            },
                            child: MyButton(width: 45.67, height: 45.67, borderRadius: 18.0, icon: Icons.add),
                          )
                        ],
                      ),
                    ],
                  )
              ),
            )
          ],
        ),
      );
  }
}