/*

 */

import 'package:flutter/material.dart';
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/widgets/ItemBox.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/screens/product/ProductDetails.dart';
import 'package:food_app_v2/screens/exclusive/ExclusiveOffer.dart';


class ExclusiveOffer extends StatefulWidget
{

  late List<dynamic> ? data;

  ExclusiveOffer({this.data});

  @override
  State<ExclusiveOffer> createState() {
    return _ExclusiveOffer();
  }
}

class _ExclusiveOffer extends State<ExclusiveOffer>
{

  @override
  Widget build(BuildContext context) {
    return myList();
  }

  Widget myList() {
    return Column(
      children: [
        title(),
        productListView()
      ],
    );
  }

  Widget title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: "Exclusive Offer",
          color: "#181725",
          size: 24.0,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/exclusive');
          },
          child: MyText(
            text: "See all",
            color: "#53B175",
            size: 18.0,
          ),
        ),
      ],
    );
  }

  Widget productListView() {
    return Container(
        height: 300.0,
        padding: EdgeInsets.only(right: 0, left: default_margin),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: this.widget.data?.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ItemBox(
                productID: this.widget.data?[index].id,
                title: this.widget.data?[index].title,
                price: this.widget.data?[index].price,
                shortDescription: this.widget.data?[index].description,
                thumbnails: this.widget.data?[index].media,
                onpress: () => ProductDetail(productID: this.widget.data?[index].id),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetail(productID: this.widget.data?[index].id),
                )
              ),
            );
          },
        ),
    );
  }
}