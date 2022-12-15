/*
 * Update and get avatar
 * api upload: /api/user/avatar
 */

import 'dart:io';
import 'dart:convert';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/models/UserAvatar.dart';


Future<dynamic> updateImage(File ? file) async {

  final sharedUser  = SharedMyUser();
  final accessToken = await sharedUser.getToken();
  final userID      = await sharedUser.getID();

  final body        = {
    'user_id'       : userID.toString(),
    'avatar'        : "data:image/png;base64,${base64Encode(await file!.readAsBytes())}",
  };

  final headers   = {
    'Authorization' : "Bearer ${accessToken}",
  };

  final respone   = await http.post(
    Uri.parse(api_update_avatar),
    headers: headers,
    body: body,
  );

  if (respone.statusCode == 201) {
    final json_data   = jsonDecode(respone.body);
    final data        = UserAvatar.fromJson(json_data);
    await SharedMyUser().set(avatar: data.media.toString());
    return data;
  }
  throw Exception("Some thing went wrong!");
}