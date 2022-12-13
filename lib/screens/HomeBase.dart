import 'package:awesome_bottom_navigation/awesome_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/screens/account/Account.dart';
import 'package:food_app_v2/screens/cart/Cart.dart';
import 'package:food_app_v2/screens/explore/Explore.dart';
import 'package:food_app_v2/screens/favourite/Favourite.dart';
import 'package:food_app_v2/screens/home/HomeScreen.dart';


class HomeBase extends StatefulWidget
{

  int ? tabIndex = 0;

  @override
  State<HomeBase> createState() {
    return _HomeBase();
  }
}

class _HomeBase extends State<HomeBase>
{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
    );
  }

  Widget Home()
  {
    List<dynamic> screens = [
      HomeScreen(),
      Explore(),
      Cart(),
      Favourite(),
      Account(),
    ];

    return Scaffold(
      body: screens[this.widget.tabIndex!],
      bottomNavigationBar: AwesomeBottomNav(
        icons: const [
          Icons.house_outlined,
          Icons.manage_search,
          Icons.shopping_cart_outlined,
          Icons.favorite_border,
          Icons.person_outline
        ],
        highlightedIcons: const [
          Icons.house_outlined,
          Icons.manage_search,
          Icons.shopping_cart_outlined,
          Icons.favorite_border,
          Icons.person_outline,
        ],
        onTapped: (int value) {
          setState(() {
            if (screens.length > value) {
              this.widget.tabIndex = value;
            }
          });
        },
        bodyBgColor: Colors.transparent,
        highlightColor: '#53B175'.toColor(),
        navFgColor: Colors.grey.withOpacity(1),
        navBgColor: Colors.white,
      ),
    );
  }
}