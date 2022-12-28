/*
 * Branch BE_12
 * Api: /api/user/update
 * Fields: user_id ,name, gender( 0:female & 1:male) ,address, birthday
 * screenshot: https://prnt.sc/kUzC8Oucrh7c
 * Controller: Controllers/updateUser.dart
 * Models: models/UpdateUser.dart
 */

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/models/UpdateUser.dart';


Future<UpdateUser> updateUser({String ? name, int ? gender, String ? address, String ? birthday}) async
{

  final myUser      = SharedMyUser();
  final userID      = await myUser.getID();
  final accessToken = await myUser.getToken();

  final headers     = {
    'Authorization' : 'Bearer $accessToken',
  };

  final body        = {
    'user_id'       : userID.toString(),
    'name'          : name.toString(),
    'gender'        : gender.toString(),
    'address'       : address.toString(),
    'birthday'      : birthday.toString(),
  };

  final response    = await http.post(
    Uri.parse(api_update_user),
    headers: headers,
    body: body,
  );

  if (response.statusCode == 201) {
    final json_decode   = jsonDecode(response.body);
    return UpdateUser.fromJson(json_decode);
  } else {
    throw Exception("Something went wrong");
  }
}