/*
 * Branch BE_02
 * Api: /api/register
 * Fields: name, email, password, password_confirmation
 * screenshot: https://prnt.sc/A_I8eziyUAD4
 * Controller: Controllers/register.dart
 * Models:
 */

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/core/SharePreferences.dart';


Future<bool> registerController({required String name, required String email, required String password, required String password_confirmation}) async {
  bool registerStatus = false;
  final response      = await http.post(
    Uri.parse(api_register),
    headers: {
      'Content-Type'  : 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name'                  : name,
      'email'                 : email,
      'password'              : password,
      'password_confirmation' : password_confirmation
    }),
  );

  if (response.statusCode == 201) {
    final userInfo      = jsonDecode(response.body);
    final storageData   = MyUser();
    storageData.set(userInfo['user']['id'], userInfo['user']['name'], userInfo['user']['email'], userInfo['token']);
    registerStatus      = true;
  } else if (response.statusCode == 401) {
    print('Username or password invalid!');
  } else {
    print('Something went wrong!');
  }

  return registerStatus;
}