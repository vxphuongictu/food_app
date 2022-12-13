import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:food_app_v2/controllers/listProducts.dart';
import 'package:food_app_v2/models/ProductList.dart';
import 'package:food_app_v2/widgets/Logo.dart';
import 'package:food_app_v2/widgets/Search.dart';
import 'package:food_app_v2/widgets/BannerImage.dart';
import 'package:food_app_v2/widgets/ExclusiveOffer.dart';
import 'package:food_app_v2/widgets/BestSelling.dart';

class HomeScreen extends StatefulWidget
{

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen>
{

  late Future<dynamic> listProducts;

  @override
  void initState() {
    EasyLoading.show(status: "Loading ...");
    listProducts  = fetchProducts();
    super.initState();
  }

  Future<void> refresh() async {
    setState(() {
      listProducts  = fetchProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(bottom: 10.0),
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
          minimum: EdgeInsets.only(left: 25.0, right: 25.0),
          child: myHome(),
        ),
      ),
      // bottomNavigationBar: BottomNavigation(),
    );
  }

  Widget myHome()
  {
    return FutureBuilder<dynamic>(
        future: listProducts,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            EasyLoading.dismiss();
          }
          return  SingleChildScrollView(
            child: Column(
              children: [
                Search(
                    hintText: "Search Store",
                    color: "#7C7C7C"
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
        }
    );
  }

  Widget breakLine()
  {
    return const SizedBox(height: 20.0);
  }
}