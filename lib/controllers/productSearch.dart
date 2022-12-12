/*
 * Branch BE_07
 * Api: /products/filter-search?textSearch=text
 * Fields:
 * screenshot: https://prnt.sc/aq85aCgGBAoF
 * Controller: Controllers/productSearch.dart
 * Models: models/ProductSearch.dart
 */

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/models/ProductSearch.dart';
import 'package:food_app_v2/core/SharePreferences.dart';


Future<List<ProductSearch>> fetchDetails({required String str}) async
{
  final uri           = api_search + str;
  final myUser        = SharedMyUser();
  final accessToken   = await myUser.getToken();
  List<ProductSearch> productSearch = [];
  final response      = await http.get(
      Uri.parse(uri),
      headers: {
        'Authorization' : 'Bearer ${accessToken}',
      }
  );

  if (response.statusCode == 201) {
    List<dynamic> json_decode   = jsonDecode(response.body)['list_product']['data'];
    for (var i = 0; i < json_decode.length; i ++) {
      final data = ProductSearch.formJson(json_decode[i]);
      productSearch.add(data);
    }
  } else {
    throw Exception("Something went wrong");
  }
  return productSearch;
}
