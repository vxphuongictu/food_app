/*
 * Branch BE_14
 * Api: /api/orders
 * Fields: user_id, discount_code_id, address_order_id, payment_method, total_payment, total_payment_sale, description, status, list_item
 * screenshot: https://prnt.sc/8mkVRMWpHgbk
 * Controller: Controllers/orders.dart
 * Models:
 */

import 'package:http/http.dart' as http;
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/core/SharePreferences.dart';

Future<bool> createOrders({
  int ? discount_code_id,
  int ? address_order_id,
  String ? payment_method,
  String ? total_payment,
  String ? total_payment_sale,
  String ? description,
  bool ? status,
  List ? list_item
}) async {
  bool orderStatus= false;
  final myUser    = MyUser();
  final userId    = await myUser.getID();
  final response  = await http.post(
    Uri.parse(api_orders),
    headers: {},
    body: {
      userId           : userId,
      discount_code_id  : discount_code_id,
      address_order_id  : address_order_id,
      payment_method    : payment_method,
      total_payment     : total_payment,
      total_payment_sale: total_payment_sale,
      description       : description,
      status            : status,
      list_item         : list_item
    }
  );

  if (response.statusCode == 201) {
    orderStatus  = true;
  } else {
    throw Exception("Something went wrong");
  }
  return orderStatus;
}