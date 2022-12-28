/*
 * Branch BE_01
 * Api: /api/login
 * Fields: email, password
 * screenshot: https://prnt.sc/gWGYdisoK024
 * Controller: Controllers/Login.dart
 * Models:
 */

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/core/SharePreferences.dart';


Future<bool> loginController({required String email, required String password}) async {
  bool loginStatus    = false;
  final response      = await http.post(
    Uri.parse(api_login),
    headers: {
      'Content-Type'  : 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email'     : email,
      'password'  : password
    }),
  );

  if (response.statusCode == 201) {
    final userInfo      = jsonDecode(response.body);
    final storageData   = SharedMyUser();
    await storageData.set(id: userInfo['user']['id'], name: userInfo['user']['name'], email: userInfo['user']['email'], token: userInfo['token'], avatar: userInfo['user']['media']['url'], gender: userInfo['user']['gender'], birthday: userInfo['user']['user_meta'][0]['meta_value'], address: userInfo['user']['user_meta'][1]['meta_value']);
    loginStatus         = true;
  } else if (response.statusCode == 401) {
    print('Username or password invalid!');
  } else {
    print('Something went wrong!');
  }
  return loginStatus;
}