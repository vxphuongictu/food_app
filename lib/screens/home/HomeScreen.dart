import 'package:flutter/material.dart';
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/models/ProductList.dart';
import 'package:food_app_v2/widgets/Logo.dart';
import 'package:food_app_v2/widgets/Search.dart';
import 'package:food_app_v2/widgets/BannerImage.dart';
import 'package:food_app_v2/widgets/BestSelling.dart';
import 'package:food_app_v2/widgets/ExclusiveOffer.dart';
import 'package:food_app_v2/screens/search/Search.dart';
import 'package:food_app_v2/controllers/listProducts.dart';

class HomeScreen extends StatefulWidget
{

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen>
{
  Future<List<ProductList>> ? listProducts;

  @override
  void initState() {
    this.listProducts = fetchProducts();
    super.initState();
  }

  Future<void> refresh() async {
    setState(() {
      this.listProducts = fetchProducts();
    });
  }

  Future<dynamic> searchCallBack({String ? searchKey, dynamic searchResult}) async {
    searchResult.then((value) {
        if (value.length > 0) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (BuildContext context) => SearchScreen(keySearch: searchKey ,searchResult: searchResult)),
            ModalRoute.withName('/search-result')
          );
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: Logo(
              image: Image.asset('assets/images/logo-home.png'),
              icon: Icons.location_on,
              location: "Dhaka, Banassre"
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 80.0,
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: SafeArea(
          minimum: const EdgeInsets.only(left: default_margin, right: default_margin),
          child: myHome(),
        ),
      ),
    );
  }

  Widget myHome()
  {
    return FutureBuilder<List<ProductList>>(
        future: this.listProducts,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Search(
                    hintText: "Search Store",
                    color: "#7C7C7C",
                    callback: searchCallBack,
                  ),
                  breakLine(),
                  const BannerImage(),
                  breakLine(),
                  ExclusiveOffer(data: snapshot.data),
                  breakLine(),
                  BestSelling(data: snapshot.data)
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        }
    );
  }

  Widget breakLine()
  {
    return const SizedBox(height: 20.0);
  }

}