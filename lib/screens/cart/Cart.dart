import 'package:flutter/material.dart';
import 'package:food_app_v2/controllers/listProducts.dart';
import 'package:food_app_v2/models/ProductList.dart';
import 'package:food_app_v2/screens/product/ProductDetails.dart';
import 'package:food_app_v2/widgets/CartItem.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/widgets/Checkout.dart';


class Cart extends StatefulWidget
{
  @override
  State<Cart> createState() {
    return _Cart();
  }
}

class _Cart extends State<Cart>
{

  late Future<List<ProductList>> ? products;

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
            text: "My Cart",
            fontWeight: FontWeight.w100,
            fontFamily: "Gilroy-Bold",
          ),
        ),
        body: SafeArea(
          minimum: EdgeInsets.only(left: 20.0, right: 20.0),
          child: cartScreen(),
        ),
    );
  }

  Widget cartScreen()
  {
    return Column(
      children: [
        Expanded(
          child: myCart(),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 24.0),
          child: TextButton(
            onPressed: () => {},
            child: MyButton(
              text: "Go to Checkout",
              description: "\$12.96",
            ),
          ),
        )
      ],
    );
  }
  Widget myCart()
  {
    return FutureBuilder<List<ProductList>>(
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
            child: CartItem(),
          ),
        );
      },
    );
  }
}