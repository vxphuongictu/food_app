/*
 * Branch BE_05
 * Api: /api/products/list
 * Fields:
 * screenshot: https://prnt.sc/WUVHAoicKSGc
 * Controller: Controllers/listProducts.dart
 * Models: models/ProductList.dart
 */

import 'dart:convert';
import 'package:food_app_v2/models/ProductList.dart';
import 'package:food_app_v2/core/config.dart';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/SharePreferences.dart';

Future fetchProducts() async
{
  final myUser                        = SharedMyUser();
  final accessToken                   = await myUser.getToken();
  final List<ProductList> listProduct = [];

  final response       = await http.get(
    Uri.parse(api_list_products),
    headers: {
      'Authorization' : 'Bearer $accessToken'
    }
  );

  if (response.statusCode == 201) {
    List<dynamic> json_decode   = jsonDecode(response.body)['list_product']['data'];
    for (var product in json_decode) {
      final data                = ProductList.formJson(product);
      listProduct.add(data);
    }
    return listProduct;
  } else {
    throw Exception("Something went wrong");
  }
}