import 'package:flutter/material.dart';
import 'package:food_app_v2/widgets/Search.dart';


class SearchScreen extends StatefulWidget
{
  @override
  State<SearchScreen> createState() {
    return _SearchScreen();
  }
}

class _SearchScreen extends State<SearchScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Search(),
      ),
      body: searchResult(),
    );
  }

  Widget searchResult()
  {
    return Container();
  }
}