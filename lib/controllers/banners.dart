/*
 * Branch BE_10
 * Api: /api/banner
 * Fields:
 * screenshot: https://prnt.sc/x38D5iDBFmJS
 * Controller: Controllers/banners.dart
 * Models: models/Banner.dart
 */

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/models/Banner.dart';

Future<Banner> fetchBanner() async
{
  final myUser      = MyUser();
  final accessToken = await myUser.getToken();

  final response     = await http.get(
    Uri.parse(api_list_banner),
    headers: {
      'Authorization' : "Bearer ${accessToken}"
    }
  );

  if (response.statusCode == 201) {
    final json_decode   = jsonDecode(response.body);
    return Banner.formJson(json_decode);
  } else {
    throw Exception("Something went wrong");
  }
}