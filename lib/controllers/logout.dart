/*
 * Branch BE_04
 * Api: /api/logout
 * Fields: None
 * screenshot: https://prnt.sc/9zeYduYMyvHv
 * Controller: Controllers/logout.dart
 * Models:
 */

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/core/SharePreferences.dart';


Future<bool> logOutController() async {
  bool loginStatus    = false;
  final myUser        = MyUser();
  int ? id            = await myUser.getID();
  String ? name       = await myUser.getName();
  String ? email      = await myUser.getEmail();
  String ? token      = await myUser.getToken();
  final accessToken   = "Bearer " + token.toString();

  final response      = await http.post(
    Uri.parse(api_logout),
    headers: {
      'Content-Type'  : 'application/json; charset=UTF-8',
      'Authorization' : accessToken,
    },
    body: jsonEncode(<String, String>{}),
  );

  if (response.statusCode == 200) {
    myUser.remove(id, name, email, token);
    loginStatus         = true;
  } else if (response.statusCode == 401) {
    print('Username or password invalid!');
  } else {
    print('Something went wrong!');
  }

  return loginStatus;
}