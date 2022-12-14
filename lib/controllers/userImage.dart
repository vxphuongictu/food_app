/*
 * Update and get avatar
 * api upload: /api/user/avatar
 */

import 'dart:io';
import 'dart:convert';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';


Future<dynamic> updateImage(File ? file) async {

  final sharedUser  = SharedMyUser();
  final accessToken = await sharedUser.getToken();
  final userID      = await sharedUser.getID();
  final body        = jsonEncode(<String, dynamic>{
    'user_id'       : userID,
    'avatar'        : "data:image/png;base64,${base64.encode(await file!.readAsBytes())}",
  });

  final headers   = {
    'Authorization' : "Bearer ${accessToken}",
  };

  final respone   = await http.post(
    Uri.parse(api_update_avatar),
    headers: headers,
    body: body
  );

  final imageString = "assets/images/product.png";
  print(api_update_avatar);
  print(await file.readAsBytes());
  final data = base64Encode(await file.readAsBytes());
  print(data);
  print(data.runtimeType);
  print(userID);
  print(respone.body);
}