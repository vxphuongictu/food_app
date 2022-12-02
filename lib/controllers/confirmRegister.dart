/*
 * Branch BE_03
 * Api: /api/check-register-code
 * Fields: user_id, email, code
 * screenshot: https://prnt.sc/A_I8eziyUAD4
 * Controller: Controllers/confirmRegister.dart
 * Models:
 */

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/core/SharePreferences.dart';


Future<bool> confirmRegisterController({required String email, required String code}) async {
  bool loginStatus    = false;
  final response      = await http.post(
    Uri.parse(api_confirm),
    headers: {
      'Content-Type'  : 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'user_id'     : SharedMyUser().getID(),
      'email'       : email,
      'code'        : code
    }),
  );

  if (response.statusCode == 201) {
    final userInfo      = jsonDecode(response.body);
    final storageData   = SharedMyUser();
    storageData.set(userInfo['user']['id'], userInfo['user']['name'], userInfo['user']['email'], userInfo['token']);
    loginStatus         = true;
  } else if (response.statusCode == 401) {
    print('Username or password invalid!');
  } else {
    print('Something went wrong!');
  }

  return loginStatus;
}