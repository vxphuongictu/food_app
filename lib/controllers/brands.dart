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


Future<Brands> fetchCategories() async
{

  final myUser      = SharedMyUser();
  final accessToken = myUser.getToken();

  final response     = await http.get(
      Uri.parse(api_list_brand),
      headers: {
        'Authorization' : "Bearer ${accessToken}",
      }
  );

  if (response.statusCode == 201) {
    final json_decode     = jsonDecode(response.body);
    return Brands.formJson(json_decode);
  } else {
    throw Exception("Something went wrong");
  }
}