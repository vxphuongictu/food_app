/*
 * Dependencies:
 * - shared_preferences: ^2.0.15
 *
 * This file will storage all session of the app
 */

import 'package:flutter/foundation.dart';
import 'package:food_app_v2/models/MyCart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedMyUser
{
  // Obtain shared preferences.
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  set(int ? id, String ? name, String ? email, String ? token) async
  {
    final SharedPreferences prefs = await _prefs;
    (id != null) ? await prefs.setInt('id', id) : '-1';
    (name != null) ? await prefs.setString('name', name) : '';
    (email != null) ? await prefs.setString('email', email) : '';
    (token != null) ? await prefs.setString('token', token) : '';
  }

  remove(int ? id, String ? name, String ? email, String ? token) async
  {
    final SharedPreferences prefs = await _prefs;
    (id != null) ? await prefs.remove('id') : '-1';
    (name != null) ? await prefs.remove('name') : '';
    (email != null) ? await prefs.remove('email') : '';
    (token != null) ? await prefs.remove('token') : '';
  }

  Future<int?> getID() async
  {
    final SharedPreferences prefs = await _prefs;
    final int ? id = prefs.getInt('id');
    return id;
  }

  Future<String?> getName() async
  {
    final SharedPreferences prefs = await _prefs;
    final String ? name = prefs.getString('name');
    return name;
  }

  Future<String?> getEmail() async
  {
    final SharedPreferences prefs = await _prefs;
    final String ? email = prefs.getString('email');
    return email;
  }

  Future<String?> getToken() async
  {
    final SharedPreferences prefs = await _prefs;
    final String ? token = prefs.getString('token');
    return token;
  }

  Future<bool?> logOut() async
  {
    SharedPreferences preferences = await _prefs;
    await preferences.clear();
    return true;
  }
}


class SharedMyCart
{
  // Obtain shared preferences.
  List<String> listCart = [];
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


  add({int ? productID, String ? productName, String ? productDescription, String ? productThumbnails, double ? productPrice}) async
  {
    bool ? isAvailable            = false; // check product is available in cart
    final SharedPreferences prefs = await _prefs;
    final cart                    = await getAll();
    final data = {
      'productID': productID,
      'productName': productName,
      'productDescription': productDescription,
      'productQuantity': 1,
      'productThumbnails': productThumbnails,
      'productPrice': productPrice,
      'productTotalPrice': productPrice
    };

    try {
      if (cart.length > 0) {
        cart.forEach((element) {
          this.listCart.add(element);
        });
      }
    } catch(e) {
      //
    }

    if (this.listCart.length > 0) {
      for (var i = 0; i < this.listCart.length; i++) {
        final item = json.decode(this.listCart[i]);
        if (item['productID'] == data['productID']) {
          item['productQuantity'] = item['productQuantity'] + 1;
          try {
            item['productTotalPrice'] = item['productQuantity'] * item['productPrice'];
          } catch(e) {
            item['productTotalPrice'] = double.parse(item['productPrice']);
          }
          this.listCart[i] = json.encode(item);
          isAvailable = true;
        }
      }
    }
    if (isAvailable == false) this.listCart.add(json.encode(data));
    if (productID != null) await prefs.setStringList('listCart', this.listCart.toList());
  }

  getAll() async
  {
    final SharedPreferences prefs = await _prefs;
    final List<String>? items = prefs.getStringList('listCart');
    return items;
  }

  clearALl() async
  {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove('listCart');
  }

  clearItem(int ? productID) async
  {
    try {
      final SharedPreferences prefs = await _prefs;
      final List<String>? listCart = await prefs.getStringList('listCart');
      for (var item in listCart!) {
        final json = jsonDecode(item);
        if (json['productID'] == productID) {
          listCart.remove(item);
          await prefs.setStringList('listCart', listCart.toList());
        }
      }
    } catch (e) {
      //
    }
  }

  update({int ? productID, int ? quantity}) async
  {
    try {
      final SharedPreferences prefs = await _prefs;
      final List<String>? listCart = await prefs.getStringList('listCart');
      for (var i = 0; i <= listCart!.length; i ++) {
        final json = jsonDecode(listCart[i]);
        if (json['productID'] == productID) {
          json['productQuantity'] = quantity;
          json['productTotalPrice'] = json['productPrice'] * json['productQuantity'];
          listCart[i] = jsonEncode(json);
          await prefs.setStringList('listCart', listCart.toList());
        }
      }
    } catch (e) {
      //
    }
  }

  get({int ? productID}) async
  {
    int ? quantity      = 1;
    List<String> myCart  = await getAll();
    try {
      for (var i = 0; i < myCart.length; i ++) {
        final item = jsonDecode(myCart[i]);
        if (item['productID'] == productID) {
          quantity = item['productQuantity'];
        }
      }
    } catch (e) {
      //
    }
    return quantity;
  }
}


class SharedMyFavourite {
  // Obtain shared preferences.
  List<String> listFavourite = [];
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


  add(
      {int ? productID, String ? productName, String ? productDescription, String ? productThumbnails, double ? productPrice}) async
  {
    bool ? isAvailable = false; // check product is available in cart
    final SharedPreferences prefs = await _prefs;
    final data = {
      'productID': productID,
      'productName': productName,
      'productDescription': productDescription,
      'productThumbnails': productThumbnails,
      'productPrice': productPrice,
    };
  }
}