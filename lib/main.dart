import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/screens/bestSelling/BestSelling.dart';
import 'package:food_app_v2/screens/login/Login.dart';
import 'package:food_app_v2/screens/HomeBase.dart';
import 'package:food_app_v2/screens/exclusive/ExclusiveOffer.dart';
import 'package:food_app_v2/screens/search/Search.dart';

void main()
{
  runApp(myRoute());
}

class myRoute extends StatefulWidget
{
  bool ? loginStatus  = true;

  myRoute({super.key});

  @override
  State<myRoute> createState() {
    return _myRoute();
  }
}

class _myRoute extends State<myRoute>
{

  late Future<String?> token;
  bool loginStatus = false;

  @override
  void initState() {
    super.initState();
    this.token = SharedMyUser().getToken();
    this.token.then((value) {
      setState(() {
        this.loginStatus = (value != null && value != "") ? true : false;
      });
    });
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
        '/home': (context) => HomeBase(),
        '/exclusive': (context) => ExclusiveOffer(),
        '/best-selling': (context) => BestSelling(),
        '/search-result': (context) => SearchScreen()
      },
    );
  }

  Widget initWidget() {
    return (this.loginStatus == true) ? HomeBase() : Login();
  }
}
