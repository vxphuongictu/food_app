/*
 * Branch BE_11
 * Api: /api/register
 * Fields: user_id, avatar (base 64)
 * screenshot: https://prnt.sc/FQyZ5ak089uj
 * Controller: Controllers/userAvatar.dart
 * Models: models/UserAvatar.dart
 */

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/models/UserAvatar.dart';
import 'package:food_app_v2/core/SharePreferences.dart';

Future<dynamic> updateAvatar({String ? avatar}) async
{
  final myUser    = SharedMyUser();
  final userId    = await myUser.getID();

  final response   = await http.post(
    Uri.parse(api_update_avatar),
    headers: {},
    body: {
      userId    : userId,
      avatar    : avatar,
    }
  );

  if (response.statusCode == 201) {
    final json_decode   = jsonDecode(response.body);
    return UserAvatar.fromJson(json_decode);
  } else {
    throw Exception("Something went wrong");
  }
}