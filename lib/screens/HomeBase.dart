/*
 * Dependencies
 * salomon_bottom_bar: ^3.3.1
 */

import 'package:flutter/material.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/screens/cart/Cart.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/screens/home/HomeScreen.dart';
import 'package:food_app_v2/screens/account/Account.dart';
import 'package:food_app_v2/screens/explore/Explore.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:food_app_v2/screens/favourite/Favourite.dart';


class HomeBase extends StatefulWidget
{

  @override
  State<HomeBase> createState() {
    return _HomeBase();
  }
}

class _HomeBase extends State<HomeBase>
{

  int tabIndex = 0;

  Future<void> fetchData() async {
    await SharedNavMenuOptions().get().then((value){
      this.tabIndex = value!;
    });
  }

  @override
  void initState() {
    super.initState();
    this.fetchData().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
    );
  }

  Widget Home()
  {
    List<SalomonBottomBarItem> listButton = [
      /// Home
      SalomonBottomBarItem(
        icon: Icon(Icons.home),
        title: Text("Home"),
        selectedColor: Colors.teal,
      ),

      /// Exploder
      SalomonBottomBarItem(
        icon: Icon(Icons.manage_search),
        title: Text("Explore"),
        selectedColor: Colors.blueGrey,
      ),

      /// Cart
      SalomonBottomBarItem(
        icon: Icon(Icons.shopping_cart_outlined),
        title: Text("Cart"),
        selectedColor: Colors.purpleAccent,
      ),

      /// Favourite
      SalomonBottomBarItem(
        icon: Icon(Icons.favorite_border),
        title: Text("Favourite"),
        selectedColor: Colors.teal,
      ),

      /// Accounts
      SalomonBottomBarItem(
        icon: Icon(Icons.person_outline),
        title: Text("Accounts"),
        selectedColor: Colors.indigo,
      ),
    ];

    final List<dynamic> listScreen = [
      HomeScreen(),
      Explore(),
      Cart(),
      Favourite(),
      Account(),
    ];

    return Scaffold(
      body: listScreen[this.tabIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: '#e1e8e1'.toColor(),
            width: 1,
          )
        ),
        child: SalomonBottomBar(
          currentIndex: this.tabIndex,
          onTap: (i) {
            setState(() {
              this.tabIndex = i;
              SharedNavMenuOptions().set(option: i);
            });
          },
          items: listButton,
        ),
      )
    );
  }
}