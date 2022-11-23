/*
 * Branch BE_08
 * Api: /api/categories/list
 * Fields:
 * screenshot: https://prnt.sc/NthM9NDUGXtq
 * Controller: Controllers/categories.dart
 * Models: models/Categories.dart
 */

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/models/Categories.dart';
import 'package:food_app_v2/core/SharePreferences.dart';


Future<Categories> fetchCategories() async
{

  final myUser      = MyUser();
  final accessToken = myUser.getToken();

  final response     = await http.get(
    Uri.parse(api_list_categories),
    headers: {
      'Authorization' : "Bearer ${accessToken}",
    }
  );

  if (response.statusCode == 201) {
    final json_decode     = jsonDecode(response.body);
    return Categories.formJson(json_decode);
  } else {
    throw Exception("Something went wrong");
  }
}