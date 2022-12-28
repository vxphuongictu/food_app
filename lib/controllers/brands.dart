/*
 * Branch BE_09
 * Api: /api/brand/list
 * Fields:
 * screenshot: https://prnt.sc/G2w6rHFIgSeY
 * Controller: Controllers/brands.dart
 * Models: models/Brands.dart
 */

import 'dart:convert';
import 'package:food_app_v2/database/DatabaseManager.dart';
import 'package:food_app_v2/models/Categories.dart';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/core/SharePreferences.dart';


Future<List<Categories>> fetchCats() async
{
  final myUser                    = SharedMyUser();
  final accessToken               = await myUser.getToken();
  List<Categories> allCategories  = [];

  try {
    final response = await http.get(
        Uri.parse(api_list_categories),
        headers: {
          'Authorization': "Bearer ${accessToken}",
        }
    ).timeout(Duration(seconds: 5));

    if (response.statusCode == 201) {
      await DatabaseManager().clearExploder();
      List<dynamic> json_decode     = jsonDecode(response.body)['list_category'];
      for (var i = 0; i < json_decode.length; i ++) {
        final item  = json_decode[i];
        final data  = Categories.formJson(item);
        await DatabaseManager().insertExplore(data);
        allCategories.add(data);
      }
    } else {
      throw Exception("Something went wrong");
    }
  } catch (e) {
    final data = await DatabaseManager().fetchExplore();
    for (var cat in data) {
      final data = Categories.fromMap(cat);
      allCategories.add(data);
    }
  }
  return allCategories;
}