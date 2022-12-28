import 'package:flutter/material.dart';
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/controllers/listProducts.dart';
import 'package:food_app_v2/screens/product/ProductDetails.dart';
import 'package:food_app_v2/widgets/ItemBox.dart';
import 'package:food_app_v2/widgets/Search.dart';


class ExclusiveOffer extends StatefulWidget
{
  @override
  State<ExclusiveOffer> createState() {
    return _ExclusiveOffer();
  }
}


class _ExclusiveOffer extends State<ExclusiveOffer>
{

  late Future listProducts;

  @override
  void initState() {
    super.initState();
    this.listProducts = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          padding: EdgeInsets.only(left: default_margin),
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Column(
          children: [
            MyText(
              text: "Exclusive Offer",
              fontFamily: "Gilroy-Bold",
              fontWeight: FontWeight.w100,
              size: 20.0,
            ),
          ],
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(left: default_margin, right: 0),
        child: listProduct(),
      ),
    );
  }

  Widget listProduct()
  {
    return FutureBuilder(
      future: this.listProducts,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                childAspectRatio: .65,
                mainAxisSpacing: 8
            ),
            itemCount: snapshot.data?.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDetail(
                        productID: snapshot.data[index].id,
                      )),
                    ),
                child: ItemBox(
                  productID: snapshot.data[index].id,
                  title: snapshot.data[index].title,
                  thumbnails: snapshot.data[index].media,
                  shortDescription: snapshot.data[index].description,
                  price: snapshot.data[index].price,
                ),
              );
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
}