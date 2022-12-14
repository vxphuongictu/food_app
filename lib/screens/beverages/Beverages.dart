import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/screens/product/ProductDetails.dart';
import 'package:food_app_v2/widgets/ItemBox.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/widgets/Filter.dart';
import 'package:food_app_v2/controllers/listProducts.dart';

class Beverages extends StatefulWidget
{
  @override
  State<Beverages> createState() {
    return _Beverages();
  }
}

class _Beverages extends State<Beverages>
{

  late Future fetchProduct;
  final double runSpacing = 4;
  final double spacing = 2;
  final int listSize = 15;
  final columns = 4;

  @override
  void initState() {
    fetchProduct  = fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: default_margin),
            child: IconButton(
              onPressed: ()=> setState(() {
                showModalBottomSheet(
                    elevation: 0,
                    isScrollControlled: true,
                    isDismissible: true,
                    enableDrag: false,
                    barrierColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(builder: (context, setNewState){
                        return Filter();
                      });
                    }
                );
              }),
              icon: Icon(
                FontAwesomeIcons.sliders,
                color: '#181725'.toColor(),
              ),
            ),
          )
        ],
        title: MyText(
          text: "Beverages",
          fontFamily: "Gilroy-Bold",
          fontWeight: FontWeight.w100,
          size: 20.0,
        ),
        leading: Container(
          margin: EdgeInsets.only(left: default_margin),
          child: IconButton(
            onPressed: ()=> Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: '#181725'.toColor(),
            ),
          ),
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(left: default_margin, right: 0),
        child: productListView(),
      ),
    );
  }

  Widget productListView() {
    return FutureBuilder(
      future: fetchProduct,
      builder: (context, snapshot) {
        return GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .70,
          ),
          itemCount: snapshot.data?.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetail(
                          productID: snapshot.data?[index].id
                      )
                  )
              ),
              child: ItemBox(
                title: snapshot.data?[index].title,
                price: snapshot.data?[index].price,
                shortDescription: snapshot.data?[index].description,
                thumbnails: snapshot.data?[index].media,
              ),
            );
          },
        );
      },
    );
  }
}