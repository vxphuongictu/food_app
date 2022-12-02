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


Future<ProductSearch> fetchDetails({required String str}) async
{
  final uri         = api_search + str;
  final myUser      = SharedMyUser();
  final accessToken = myUser.getToken();
  final response     = await http.get(
      Uri.parse(uri),
      headers: {
        'Authorization' : 'Bearer ${accessToken}',
      }
  );

  if (response.statusCode == 201) {
    final json_decode   = jsonDecode(response.body);
    return ProductSearch.formJson(json_decode);
  } else {
    throw Exception("Something went wrong");
  }
}
