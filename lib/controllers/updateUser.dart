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


Future<UpdateUser> updateUser({String ? name, bool ? gender, String ? address, String ? birthday}) async
{

  final myUser      = MyUser();
  final userID      = await myUser.getID();


  final response    = await http.post(
    Uri.parse(api_update_user),
    headers: {},
    body: {
      'id'      : userID,
      'name'    : name,
      'gender'  : gender,
      'address' : address,
      'birthday': birthday,
    }
  );

  if (response.statusCode == 201) {
    final json_decode   = jsonDecode(response.body);
    return UpdateUser.fromJson(json_decode);
  } else {
    throw Exception("Something went wrong");
  }
}