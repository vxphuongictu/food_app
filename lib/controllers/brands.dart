/*
 * Branch BE_09
 * Api: /api/brand/list
 * Fields:
 * screenshot: https://prnt.sc/G2w6rHFIgSeY
 * Controller: Controllers/brands.dart
 * Models: models/Brands.dart
 */

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/models/Brands.dart';
import 'package:food_app_v2/core/SharePreferences.dart';


Future<List<Brands>> fetchBrand() async
{
  final myUser            = SharedMyUser();
  final accessToken       = await myUser.getToken();
  List<Brands> allBrands  = [];
  final response          = await http.get(
      Uri.parse(api_list_brand),
      headers: {
        'Authorization' : "Bearer ${accessToken}",
      }
  );

  if (response.statusCode == 201) {
    List<dynamic> json_decode     = jsonDecode(response.body)['list_brand'];
    for (var i = 0; i < json_decode.length; i ++) {
      final item  = json_decode[i];
      final data  = Brands.formJson(item);
      allBrands.add(data);
    }
    return allBrands;
  } else {
    throw Exception("Something went wrong");
  }
}