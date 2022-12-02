
import 'package:awesome_bottom_navigation/awesome_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/screens/home/HomeScreen.dart';
import 'package:food_app_v2/screens/explore/Explore.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/screens/cart/Cart.dart';
import 'package:food_app_v2/screens/favourite/Favourite.dart';
import 'package:food_app_v2/screens/account/Account.dart';
import 'package:food_app_v2/screens/login/Login.dart';

void main()
{
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget
{
  bool ? loginStatus  = false;
  int ? tabIndex = 0;

  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage>
{

  late Future<String?> token;

  @override
  void initState() {
    // token = SharedMyUser().getToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        )
      ),
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      initialRoute: '/',
      routes: {
        '/': (context) => initWidget(),
        '/login': (context) => Login(),
        '/home': (context) => Home()
      },
    );
  }

  Widget initWidget()
  {

    this.token  = SharedMyUser().getToken();
    return FutureBuilder<String?>(
      future: this.token,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Home();
        } else {
          return Login();
        }
      },
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
