/*
 * dependencies: font_awesome_flutter: ^10.2.1
 */


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/controllers/productSearch.dart';
import 'package:food_app_v2/models/ProductSearch.dart';

class Search extends StatefulWidget
{

  late double ? width;
  late double ? height;
  late double ? fontSize;
  late String ? fontFamily;
  late FontWeight ? fontWeight;
  late String ? hintText;
  late String ? color;

  Search({
    this.width=double.infinity,
    this.height=50.0,
    this.fontSize=14.0,
    this.fontFamily="Gilroy",
    this.fontWeight=FontWeight.w600,
    this.hintText="Search Store",
    this.color="#181B19"
  });

  @override
  State<Search> createState() {
    return _Search();
  }
}

class _Search extends State<Search>
{

  late TextEditingController searchKey = TextEditingController();
  late Future<ProductSearch> ? searchResult;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: (this.widget.height) != null ? this.widget.height : 50.0,
      child: TextField(
        controller: searchKey,
        onEditingComplete: () => setState(() {
          searchResult = fetchDetails(str: searchKey.text);
          FutureBuilder<ProductSearch>(
            future: searchResult,
            builder: (context, snapshot) {
              if (snapshot.hasData) {

              }
              print(snapshot.data!.title);
              return Text(snapshot.data!.id.toString());
            }
          );
        }),
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          color: (this.widget.color) != null ? this.widget.color.toString().toColor() : '',
          fontFamily: (this.widget.fontFamily) != null ? this.widget.fontFamily : null,
          fontSize: (this.widget.fontWeight) != null ? this.widget.fontSize : 14.0,
        ),
        decoration: InputDecoration(
          fillColor: "#F2F3F2".toColor(),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none
          ),
          hintText: (this.widget.hintText) != null ? this.widget.hintText : 'Search Store',
          contentPadding: EdgeInsets.only(
            bottom: (this.widget.height) != null ? (this.widget.height! / 2) : 50.0 / 2,
          ),
          prefixIcon: Icon(
              FontAwesomeIcons.search,
              size: (this.widget.fontSize) != null ? this.widget.fontSize : 14.0,
              color: "#181B19".toColor(),
          ),
          suffix: IconButton(
            onPressed: () => setState(() {
              searchKey.clear();
            }),
            padding: EdgeInsets.zero,
            isSelected: false,
            icon: Icon(
              FontAwesomeIcons.solidTimesCircle,
              size: (this.widget.fontSize) != null ? this.widget.fontSize : 14.0,
              color: "#C5C5C5".toColor(),
            ),
          ),
        ),
      ),
    );
  }
}