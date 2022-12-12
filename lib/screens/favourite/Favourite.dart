import 'package:flutter/material.dart';
import 'package:food_app_v2/controllers/listProducts.dart';
import 'package:food_app_v2/models/ProductList.dart';
import 'package:food_app_v2/screens/product/ProductDetails.dart';
import 'package:food_app_v2/widgets/CartItem.dart';
import 'package:food_app_v2/widgets/FavouriteItem.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class Favourite extends StatefulWidget
{
  @override
  State<Favourite> createState() {
    return _Favourite();
  }
}

class _Favourite extends State<Favourite>
{

  late Future ? products;

  @override
  void initState() {
    products  = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: MyText(
          text: "Favourite",
          fontWeight: FontWeight.w100,
          fontFamily: "Gilroy-Bold",
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(left: 20.0, right: 20.0),
        child: favouriteScreen(),
      ),
    );
  }

  Widget favouriteScreen()
  {
    return Column(
      children: [
        Expanded(
          child: myFavourite(),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 24.0),
          child: MyButton(
            text: "Add All To Cart",
          ),
        )
      ],
    );
  }
  Widget myFavourite()
  {
    return FutureBuilder(
      future: products,
      builder: (context, snapshot) {
        return ListView.builder(
          itemCount: snapshot.data?.length,
          itemBuilder: (context, index) => InkWell(
            onTap: ()=> Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetail(productID: snapshot.data?[index].id),
                )
            ),
            child: FavouriteItem(),
          ),
        );
      },
    );
  }

}