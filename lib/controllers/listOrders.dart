/*
 * Branch BE_13
 * Api: /api/orders
 * Fields:
 * screenshot: https://prnt.sc/b5LrgE4c6q7d
 * Controller: Controllers/listOrders.dart
 * Models: models/ListOrders.dart
 */

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/models/ListOrders.dart';

Future<ListOrders> getListOrders() async
{

  final myUser      = SharedMyUser();
  final accessToken = await myUser.getToken();
  final response    = await http.get(
    Uri.parse(api_orders),
    headers: {
      'Authorization' : "Bearer ${accessToken}",
    }
  );
  print(response.body);
  if (response.statusCode == 201) {
    final json_decode   = jsonDecode(response.body);
    return ListOrders.formJson(json_decode);
  } else {
    throw Exception("Something went wrong");
  }
}