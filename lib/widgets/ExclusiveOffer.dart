/*

 */

import 'package:flutter/material.dart';
import 'package:food_app_v2/controllers/listProducts.dart';
import 'package:food_app_v2/models/ProductList.dart';
import 'package:food_app_v2/widgets/ItemBox.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/screens/product/ProductDetails.dart';


class ExclusiveOffer extends StatefulWidget
{
  const ExclusiveOffer({super.key});

  @override
  State<ExclusiveOffer> createState() {
    return _ExclusiveOffer();
  }
}

class _ExclusiveOffer extends State<ExclusiveOffer>
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
          text: "Exclusive Offer",
          color: "#181725",
          size: 24.0,
        ),
        TextButton(
          onPressed: () {
            print('123');
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
    return SizedBox(
        height: 300.0,
        child: FutureBuilder<List<ProductList>>(
          future: listProducts,
          builder: (context, snapshot) {
            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(productID: snapshot.data?[index].id),
                    )
                  ),
                  child: ItemBox(
                    title: snapshot.data?[index].title,
                    price: snapshot.data?[index].price.toString(),
                    shortDescription: snapshot.data?[index].description,
                    thumbnails: snapshot.data?[index].media,
                    onpress: () => ProductDetail(productID: snapshot.data?[index].id),
                  ),
                );
              },
            );
          },
        ),
    );
  }
}