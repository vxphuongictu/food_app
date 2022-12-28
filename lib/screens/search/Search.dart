import 'package:flutter/material.dart';
import 'package:food_app_v2/screens/product/ProductDetails.dart';
import 'package:food_app_v2/widgets/ItemBox.dart';
import 'package:food_app_v2/widgets/Search.dart';


class SearchScreen extends StatefulWidget
{

  late dynamic searchResult;
  late String ? keySearch;

  SearchScreen({this.keySearch, this.searchResult});

  @override
  State<SearchScreen> createState() {
    return _SearchScreen();
  }
}

class _SearchScreen extends State<SearchScreen>
{

  Future<dynamic> searchCallback({String ? searchKey, dynamic searchResult}) async {
    searchResult.then((value) {
      if (value.length > 0) {
        setState(() {
          this.widget.keySearch = searchKey;
          this.widget.searchResult = searchResult;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Search(hintText: "Search Store", color: "#7C7C7C", showFilter: true, keySearch: this.widget.keySearch, callback: searchCallback),
      ),
      body: searchResult(),
    );
  }

  Widget searchResult()
  {
    return FutureBuilder<dynamic>(
      future: this.widget.searchResult,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            padding: const EdgeInsets.only(left: 25.0, right: 10.0),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: .70,
              ),
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () =>
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetail(
                                      productID: snapshot.data?[index].id
                                  )
                          )
                      ),
                  child: ItemBox(
                    title: snapshot.data?[index].title,
                    price: snapshot.data?[index].price,
                    shortDescription: snapshot.data?[index].description,
                    thumbnails: snapshot.data?[index].media,
                  ),
                );
              },
            ),
          );
        }
        return Container();
      }
    );
  }
}