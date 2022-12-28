import 'package:flutter/material.dart';
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/models/Categories.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/widgets/Search.dart';
import 'package:food_app_v2/widgets/FindProductBoxItem.dart';
import 'package:food_app_v2/screens/beverages/Beverages.dart';
import 'package:food_app_v2/controllers/brands.dart';


class Explore extends StatefulWidget
{

  @override
  State<Explore> createState() {
    return _Explore();
  }
}

class _Explore extends State<Explore>
{
  List<dynamic> productArr   = [];


  late Future<List<Categories>> listCats;

  @override
  void initState() {
    super.initState();
    listCats = fetchCats();
  }

  Future<void> _refresh() async {
    setState(() {
      listCats = fetchCats();
    });
  }

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
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SafeArea(
          minimum: EdgeInsets.only(left: default_margin, right: default_margin),
          child: listProduct(),
        ),
      ),
    );
  }

  Widget listProduct()
  {
    return FutureBuilder(
      future: this.listCats,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final length = snapshot.data?.length;
          for (var i = 0; i < length!; i ++) {
            this.productArr.add(
                FindProductBoxItem(
                    productName: snapshot.data?[i].name,
                    borderColor: "${snapshot.data?[i].border_color}".toColor(),
                    bgColor: "${snapshot.data?[i].background}".toColor(),
                    thumbnails: "${snapshot.data?[i].media}",
                )
            );
          }
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                childAspectRatio: .85,
                mainAxisSpacing: 8
            ),
            itemCount: snapshot.data?.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Beverages()),
                    ),
                child: this.productArr[index],
              );
            },
          );
        } else {
          return Container();
        }
      }
    );
  }
}