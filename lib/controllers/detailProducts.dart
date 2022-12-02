/*
 * Branch BE_06
 * Api: /api/products/item/{product_id}
 * Fields:
 * screenshot: https://prnt.sc/8YHEix-oHHPr
 * Controller: Controllers/detailProducts.dart
 * Models: models/ProductDetails.dart
 */

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/models/ProductDetails.dart';
import 'package:food_app_v2/core/SharePreferences.dart';


Future<ProductDetails> fetchDetails({required int product_id}) async
{
  final myUser      = SharedMyUser();
  final accessToken = await myUser.getToken();
  final uri         = api_products_detail + product_id.toString();
  final response     = await http.get(
    Uri.parse(uri),
    headers: {
      'Authorization' : 'Bearer ${accessToken}',
    }
  );

  if (response.statusCode == 201) {
    final json_decode   = jsonDecode(response.body);
    return ProductDetails.formJson(json_decode);
  } else {
    throw Exception("Something went wrong");
  }
}
