import 'dart:convert';
import 'package:food_app_v2/models/MyCart.dart';
import 'package:food_app_v2/core/SharePreferences.dart';


Future<List<MyCart>> fetchCart() async {
   final List<MyCart> listCart         = [];
   List<String> listCartStorage        = await SharedMyCart().getAll();
   if (listCartStorage.isNotEmpty) {
      for (var product in listCartStorage) {
         final item        = jsonDecode(product);
         final data        = MyCart.formJson(item);
         listCart.add(data);
      }
   }
   return listCart;
}