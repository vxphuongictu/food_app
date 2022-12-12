/*

 */

import 'package:flutter/material.dart';
import 'package:food_app_v2/widgets/ItemBox.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class BestSelling extends StatefulWidget
{

  late List<dynamic> ? data;

  BestSelling({this.data});

  @override
  State<BestSelling> createState() {
    return _BestSelling();
  }
}

class _BestSelling extends State<BestSelling>
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
          text: "Best Selling",
          color: "#181725",
          size: 24.0,
        ),
        TextButton(
          onPressed: ()=> Navigator.pushNamedAndRemoveUntil(context, '/best-selling', (route) => false),
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
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: this.widget.data?.length,
        itemBuilder: (context, index) {
          return ItemBox(
            productID: this.widget.data?[index].id,
            title: this.widget.data?[index].title,
            price: this.widget.data?[index].price,
            shortDescription: this.widget.data?[index].description,
            thumbnails: this.widget.data?[index].media,
          );
        },
      ),
    );
  }
}