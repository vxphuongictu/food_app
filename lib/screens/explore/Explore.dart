import 'package:flutter/material.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/widgets/Search.dart';
import 'package:food_app_v2/widgets/FindProductBoxItem.dart';
import 'package:food_app_v2/screens/beverages/Beverages.dart';


class Explore extends StatefulWidget
{

  @override
  State<Explore> createState() {
    return _Explore();
  }
}

class _Explore extends State<Explore>
{

  List<dynamic> productArr   = [
    FindProductBoxItem(productName: 'Frash Fruits & Vegetable', borderColor: Color.fromRGBO(83, 177, 117, 0.7), bgColor: Color.fromRGBO(83, 177, 117, 0.1)),
    FindProductBoxItem(productName: 'Cooking Oil & Ghee', borderColor: Color.fromRGBO(248, 164, 76, 0.7), bgColor: Color.fromRGBO(248, 164, 76, 0.1)),
    FindProductBoxItem(productName: 'Meat & Fish', borderColor: Color.fromRGBO(247, 165, 147, 0.7), bgColor: Color.fromRGBO(247, 165, 147, 0.1)),
    FindProductBoxItem(productName: 'Bakery & Snacks', borderColor: Color.fromRGBO(255, 255, 255, 0.7), bgColor: Color.fromRGBO(255, 255, 255, 0.1)),
    FindProductBoxItem(productName: 'Bakery & Snacks', borderColor: Color.fromRGBO(253, 229, 152, 0.7), bgColor: Color.fromRGBO(253, 229, 152, 0.1)),
    FindProductBoxItem(productName: 'Frash Fruits & Vegetable', borderColor: Color.fromRGBO(83, 177, 117, 0.7), bgColor: Color.fromRGBO(83, 177, 117, 0.1)),
    FindProductBoxItem(productName: 'Cooking Oil & Ghee', borderColor: Color.fromRGBO(248, 164, 76, 0.7), bgColor: Color.fromRGBO(248, 164, 76, 0.1)),
    FindProductBoxItem(productName: 'Meat & Fish', borderColor: Color.fromRGBO(247, 165, 147, 0.7), bgColor: Color.fromRGBO(247, 165, 147, 0.1)),
    FindProductBoxItem(productName: 'Bakery & Snacks', borderColor: Color.fromRGBO(255, 255, 255, 0.7), bgColor: Color.fromRGBO(255, 255, 255, 0.1)),
    FindProductBoxItem(productName: 'Bakery & Snacks', borderColor: Color.fromRGBO(253, 229, 152, 0.7), bgColor: Color.fromRGBO(253, 229, 152, 0.1)),
    FindProductBoxItem(productName: 'Frash Fruits & Vegetable', borderColor: Color.fromRGBO(83, 177, 117, 0.7), bgColor: Color.fromRGBO(83, 177, 117, 0.1)),
    FindProductBoxItem(productName: 'Cooking Oil & Ghee', borderColor: Color.fromRGBO(248, 164, 76, 0.7), bgColor: Color.fromRGBO(248, 164, 76, 0.1)),
    FindProductBoxItem(productName: 'Meat & Fish', borderColor: Color.fromRGBO(247, 165, 147, 0.7), bgColor: Color.fromRGBO(247, 165, 147, 0.1)),
    FindProductBoxItem(productName: 'Bakery & Snacks', borderColor: Color.fromRGBO(255, 255, 255, 0.7), bgColor: Color.fromRGBO(255, 255, 255, 0.1)),
    FindProductBoxItem(productName: 'Bakery & Snacks', borderColor: Color.fromRGBO(253, 229, 152, 0.7), bgColor: Color.fromRGBO(253, 229, 152, 0.1)),
    FindProductBoxItem(productName: 'Frash Fruits & Vegetable', borderColor: Color.fromRGBO(83, 177, 117, 0.7), bgColor: Color.fromRGBO(83, 177, 117, 0.1)),
    FindProductBoxItem(productName: 'Cooking Oil & Ghee', borderColor: Color.fromRGBO(248, 164, 76, 0.7), bgColor: Color.fromRGBO(248, 164, 76, 0.1)),
    FindProductBoxItem(productName: 'Meat & Fish', borderColor: Color.fromRGBO(247, 165, 147, 0.7), bgColor: Color.fromRGBO(247, 165, 147, 0.1)),
    FindProductBoxItem(productName: 'Bakery & Snacks', borderColor: Color.fromRGBO(255, 255, 255, 0.7), bgColor: Color.fromRGBO(255, 255, 255, 0.1)),
    FindProductBoxItem(productName: 'Bakery & Snacks', borderColor: Color.fromRGBO(253, 229, 152, 0.7), bgColor: Color.fromRGBO(253, 229, 152, 0.1)),
    FindProductBoxItem(productName: 'Frash Fruits & Vegetable', borderColor: Color.fromRGBO(83, 177, 117, 0.7), bgColor: Color.fromRGBO(83, 177, 117, 0.1)),
    FindProductBoxItem(productName: 'Cooking Oil & Ghee', borderColor: Color.fromRGBO(248, 164, 76, 0.7), bgColor: Color.fromRGBO(248, 164, 76, 0.1)),
    FindProductBoxItem(productName: 'Meat & Fish', borderColor: Color.fromRGBO(247, 165, 147, 0.7), bgColor: Color.fromRGBO(247, 165, 147, 0.1)),
    FindProductBoxItem(productName: 'Bakery & Snacks', borderColor: Color.fromRGBO(255, 255, 255, 0.7), bgColor: Color.fromRGBO(255, 255, 255, 0.1)),
    FindProductBoxItem(productName: 'Bakery & Snacks', borderColor: Color.fromRGBO(253, 229, 152, 0.7), bgColor: Color.fromRGBO(253, 229, 152, 0.1)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120.0,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: MyText(
                text: "Find Products",
                fontFamily: "Gilroy-Bold",
                fontWeight: FontWeight.w100,
                size: 20.0,
              ),
            ),
            Search()
          ],
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(left: 25.0, right: 25.0),
        child: listProduct(),
      ),
    );
  }

  Widget listProduct()
  {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          childAspectRatio: .85,
          mainAxisSpacing: 8
      ),
      itemCount: productArr.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Beverages()),
          ),
          child: productArr[index],
        );
      },
    );
  }
}