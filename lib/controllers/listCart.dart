import 'dart:convert';
import 'package:food_app_v2/models/MyCart.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/database/DatabaseManager.dart';


Future<List<MyCart>> fetchCart() async {
   final List<MyCart> listCart         = [];
   List<String> listCartStorage        = await DatabaseManager().fetchCart();
   if (listCartStorage.isNotEmpty) {
      for (var product in listCartStorage) {
         final item        = jsonDecode(product);
         final data        = MyCart.formJson(item);
         listCart.add(data);
      }
   }
   return listCart;
}