/*

 */

import 'package:flutter/material.dart';
import 'package:food_app_v2/controllers/listProducts.dart';
import 'package:food_app_v2/models/ProductList.dart';
import 'package:food_app_v2/widgets/ItemBox.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class BestSelling extends StatefulWidget
{
  const BestSelling({super.key});

  @override
  State<BestSelling> createState() {
    return _BestSelling();
  }
}

class _BestSelling extends State<BestSelling>
{

  late Future<List<ProductList>> listProducts;

  @override
  void initState() {
    super.initState();
    listProducts  = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return myList();
  }

  Widget myList() {
    return FutureBuilder<List<ProductList>>(
      future: listProducts,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final data = snapshot.data!;
          print(data.length);
          return Column(
            children: [
              title(),
              productListView()
            ],
          );
        } else {
          return Container();
        }
      },
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
          onPressed: ()=> {},
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
      child: FutureBuilder<List<ProductList>>(
        future: listProducts,
        builder: (context, snapshot) {
          return ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return ItemBox(
                title: snapshot.data?[index].title,
                price: snapshot.data?[index].price.toString(),
                shortDescription: snapshot.data?[index].description,
                thumbnails: snapshot.data?[index].media,
              );
            },
          );
        },
      ),
    );
  }
}