/*
 * Branch BE_06
 * Api: /api/products/item/{product_id}
 * Fields:
 * screenshot: https://prnt.sc/8YHEix-oHHPr
 * Controller: Controllers/detailProducts.dart
 * Models: models/ProductDetails.dart
 */

import 'dart:convert';
import 'package:food_app_v2/models/ProductList.dart';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/database/DatabaseManager.dart';


Future<ProductList> fetchDetails({required int product_id}) async
{
  final myUser      = SharedMyUser();
  final accessToken = await myUser.getToken();
  final uri         = api_products_detail + product_id.toString();
  try {
    final response = await http.get(
        Uri.parse(uri),
        headers: {
          'Authorization': 'Bearer ${accessToken}',
        }
    ).timeout(const Duration(seconds: 10));

    if (response.statusCode == 201) {
      final dataResult   = jsonDecode(response.body)['data_product'];
      return ProductList.formJson(dataResult);
    } else {
      throw Exception("Something went wrong");
    }
  } catch (e){
    final dataResult = await DatabaseManager().fetchDetailProduct(product_id);
    return ProductList.fromMap(dataResult[0]);
  }
}
