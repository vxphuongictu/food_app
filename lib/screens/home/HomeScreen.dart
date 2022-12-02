import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
      body: SafeArea(
        minimum: EdgeInsets.only(left: 25.0, right: 25.0),
        child: myHome(),
      ),
      // bottomNavigationBar: BottomNavigation(),
    );
  }

  Widget myHome()
  {
    return SingleChildScrollView(
      child: Column(
        children: [
          Search(
              hintText: "Search Store",
              color: "#7C7C7C"
          ),
          breakLine(),
          const BannerImage(),
          breakLine(),
          const ExclusiveOffer(),
          breakLine(),
          const BestSelling()
        ],
      ),
    );
  }

  Widget breakLine()
  {
    return const SizedBox(height: 20.0);
  }
}