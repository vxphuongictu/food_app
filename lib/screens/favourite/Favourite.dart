import 'package:flutter/material.dart';
import 'package:food_app_v2/controllers/listProducts.dart';
import 'package:food_app_v2/models/ProductList.dart';
import 'package:food_app_v2/screens/product/ProductDetails.dart';
import 'package:food_app_v2/widgets/CartItem.dart';
import 'package:food_app_v2/widgets/FavouriteItem.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/core/SharePreferences.dart';


class Favourite extends StatefulWidget
{
  @override
  State<Favourite> createState() {
    return _Favourite();
  }
}

class _Favourite extends State<Favourite>
{

  late Future products;
  late Future listFavourite;

  @override
  void initState() {
    products      = fetchProducts();
    listFavourite = SharedMyFavourite().get();
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
    return FutureBuilder<dynamic>(
      future: Future.wait([this.products, this.listFavourite]),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final dataProduct   = snapshot.data[0];
          final dataFavourite = snapshot.data[1];
          print(dataProduct[1].id.toString());
          print(dataFavourite);
          return ListView.builder(
            itemCount: dataProduct.length,
            itemBuilder: (context, index) =>
            InkWell(
                  onTap: () =>
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            ProductDetail(productID: dataProduct?[index].id),
                          )
                      ),
                  child:
                  (dataFavourite.contains(dataProduct[index].id.toString())) ?
                  FavouriteItem(thumbnails: dataProduct[index].media, productPrice: dataProduct[index].price, productName: dataProduct[index].title, productDescription: dataProduct[index].description,) : Container(),
                ),
          );
        }
        return Container();
      },
    );
  }

}