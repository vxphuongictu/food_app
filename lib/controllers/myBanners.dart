/*
 * Branch BE_10
 * Api: /api/banner
 * Fields:
 * screenshot: https://prnt.sc/x38D5iDBFmJS
 * Controller: Controllers/myBanners.dart
 * Models: models/BannerImage.dart
 */

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/models/MyBanner.dart';

Future<List<MyBanner>> fetchBanner() async
{
  final List<MyBanner> listBanner   = [];
  final myUser                      = SharedMyUser();
  final accessToken                 = await myUser.getToken();

  final response     = await http.get(
    Uri.parse(api_list_banner),
    headers: {
      'Authorization' : "Bearer ${accessToken}"
    }
  );
  
  if (response.statusCode == 201) {
    List<dynamic> json_decode   = jsonDecode(response.body)['list_banner'];
    for (var element in json_decode) {
      final data = MyBanner.formJson(element);
      listBanner.add(data);
    }
    return listBanner;
  } else {
    throw Exception("Something went wrong");
  }
}