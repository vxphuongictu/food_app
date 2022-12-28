/*
 * Dependencies:
 * - shared_preferences: ^2.0.15
 *
 * This file will storage all session of the app
 */

import 'dart:convert';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:food_app_v2/models/MyCart.dart';
import 'package:food_app_v2/models/MyDelivery.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedMyUser
{
  // Obtain shared preferences.
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  set({int ? id = null, String ? name = null, String ? email = null, String ? token = null, String ? avatar = null, int ? gender = null, String ? address = null, String ? birthday = null}) async
  {
    final SharedPreferences prefs = await _prefs;
    (id != null) ? await prefs.setInt('id', id) : '-1';
    (name != null) ? await prefs.setString('name', name) : '';
    (email != null) ? await prefs.setString('email', email) : '';
    (token != null) ? await prefs.setString('token', token) : '';
    (avatar != null) ? await prefs.setString('avatar', avatar) : '';
    (gender != null) ? await prefs.setInt('gender', gender) : '';
    (address != null) ? await prefs.setString('address', address) : '';
    (birthday != null) ? await prefs.setString('birthday', birthday) : '';
  }

  remove({int ? id = null, String ? name = null, String ? email = null, String ? token = null, String ? avatar = null, int ? gender = null, String ? address = null, String ? birthday = null}) async
  {
    final SharedPreferences prefs = await _prefs;
    (id != null) ? await prefs.remove('id') : '-1';
    (name != null) ? await prefs.remove('name') : '';
    (email != null) ? await prefs.remove('email') : '';
    (token != null) ? await prefs.remove('token') : '';
    (avatar != null) ? await prefs.remove('avatar') : '';
    (gender != null) ? await prefs.remove('gender') : '';
    (address != null) ? await prefs.remove('address') : '';
    (birthday != null) ? await prefs.remove('birthday') : '';
  }

  Future<String?> getBirthday() async
  {
    final SharedPreferences prefs = await _prefs;
    final String ? birthday = prefs.getString('birthday');
    return birthday;
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

  Future<String?> getAvatar() async
  {
    final SharedPreferences prefs = await _prefs;
    final String ? avatar = prefs.getString('avatar');
    return avatar;
  }

  Future<int?> getGender() async {
    final SharedPreferences prefs = await _prefs;
    final int ? gender = prefs.getInt('gender');
    return gender;
  }

  Future<String?> getAddress() async {
    final SharedPreferences prefs = await _prefs;
    final String ? address = prefs.getString('address');
    return address;
  }

  Future<bool?> logOut() async
  {
    SharedPreferences preferences = await _prefs;
    await preferences.clear();
    return true;
  }
}



class SharedMyFavourite
{
  // Obtain shared preferences.
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


  add({int ? productID}) async
  {

    List<String> listFavourite  = [];
    final SharedPreferences prefs = await _prefs;
    List<String> allFavourite     = await get();

    if (allFavourite != null) {
      for (var item in allFavourite) {
        if (listFavourite.contains(item) == false) {
          listFavourite.add(item);
        }
      }
    }

    if (listFavourite.contains(productID.toString())){
      listFavourite.remove(productID.toString());
    } else {
      listFavourite.add(productID.toString());
    }

    await prefs.setStringList('favourites', listFavourite.toList());
  }

  get() async {
    final SharedPreferences prefs = await _prefs;
    List<String>? allFavourite    = await prefs.getStringList('favourites');
    return allFavourite;
  }

  isFavourite(int ? productID) async {
    final SharedPreferences prefs = await _prefs;
    List<String>? allFavourite    = await prefs.getStringList('favourites');
    if (productID != null && allFavourite != null) {
      for (var prdID in allFavourite) {
        if (productID.toString() == prdID) {
          return true;
        }
      }
    }
    return false;
  }
}

class SharedNavMenuOptions
{
  // Obtain shared preferences.
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  set({int ? option = null}) async {
    final SharedPreferences prefs = await _prefs;
    if (option != null) await prefs.setInt('option', option);
  }

  Future<int?> get() async {
    final SharedPreferences prefs = await _prefs;
    return await prefs.getInt('option');
  }

  destroy() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove('option');
  }
}

class SharedMyDelivery
{
  // Obtain shared preferences.
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  List<String> listLocation = [];

  add({int ? locatedID = null, required String fullname, required String phoneNumber, required String country, String ? street = null, int ? locationType = 0, bool ? isDefault = false, bool ? isPickup = false, bool ? isShipping = false}) async
  {
    final SharedPreferences prefs     = await _prefs;
    final List<String> ? listDelivery = await prefs.getStringList('delivery');
    var countID                       = Random().nextInt(9999);

    try {
      if (listDelivery!.isNotEmpty) {
        for (var i = 0; i < listDelivery.length; i ++) {
          final data                  = MyDelivery.formJson(json.decode(listDelivery[i]));
          if (isDefault == true) data.isDefault = false;
          if (locatedID != data.locatedID) {
            final enCode = jsonEncode(<String, dynamic>{
              'locatedID': data.locatedID,
              'fullname': data.fullname,
              'phoneNumber': data.phoneNumber,
              'country': data.country,
              'street': data.street,
              'type': data.type,
              'isDefault': data.isDefault,
              'isPickup': data.isPickup,
              'isShipping': data.isShipping,
              'isSelected': data.isSelected
            });
            this.listLocation.add(enCode);
          }
        }
      }
    } catch (e) {
      //
    }

    final data                    = jsonEncode(<String, dynamic>{
      'locatedID'                 : countID,
      'fullname'                  : fullname,
      'phoneNumber'               : phoneNumber,
      'country'                   : country,
      'street'                    : street,
      'type'                      : locationType,
      'isDefault'                 : isDefault,
      'isPickup'                  : isPickup,
      'isShipping'                : isShipping,
    });
    this.listLocation.add(data);

    await this.selected(locationID: countID);
    if (this.listLocation != null) await prefs.setStringList('delivery', this.listLocation.toList());
  }

  Future<List> getAll() async {
    final List<dynamic> listDelivery  = [];
    final SharedPreferences prefs     = await _prefs;
    final List<String> ? data         = await prefs.getStringList('delivery');
    try {
      for (var item in data!) {
        final data = MyDelivery.formJson(jsonDecode(item));
        if (data.isDefault == true) {
          listDelivery.insert(0, data);
        } else {
          listDelivery.add(data);
        }
      }
    } catch (e) {
      //
    }
    return listDelivery;
  }

  Future<dynamic> get({required int locationID}) async {
    final SharedPreferences prefs     = await _prefs;
    final List<String> ? data         = await prefs.getStringList('delivery');
    for (var item in data!) {
      final data = MyDelivery.formJson(jsonDecode(item));
      if (data.locatedID == locationID) {
        return data;
      }
    }
  }

  removeAll() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove('delivery');
  }

  Future<dynamic> remove({required int locationID}) async {
    final List<String> listDelivery  = [];
    final SharedPreferences prefs     = await _prefs;
    final List<String> ? data         = await prefs.getStringList('delivery');
    for (var item in data!) {
      final data = MyDelivery.formJson(jsonDecode(item));
      if (data.locatedID != locationID) {
        listDelivery.add(item);
      }
    }
    if (listDelivery != null) await prefs.setStringList('delivery', listDelivery.toList());
  }

  selected({required int locationID}) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setInt('currentDelivery', locationID);
  }

  currentLocation() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getInt('currentDelivery');
  }
}

class SharedMyCard {
  // Obtain shared preferences.
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  set({required CardFieldInputDetails ? card}) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString('card', card.toString());
  }

  get() async {
    final SharedPreferences prefs = await _prefs;
    final data = await prefs.getString('card');
    return data;
  }

  destroy() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove('option');
  }
}