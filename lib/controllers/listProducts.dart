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

Future<ProductList> fetchProducts() async
{
  final myUser        = MyUser();
  final accessToken   = await myUser.getToken();
  print(accessToken);
  final response       = await http.get(
    Uri.parse(api_list_products),
    headers: {
      'Authorization' : 'Bearer $accessToken'
    }
  );

  if (response.statusCode == 201) {
    final json_decode   = jsonDecode(response.body);
    return ProductList.formJson(json_decode);
  } else {
    throw Exception("Something went wrong");
  }
}