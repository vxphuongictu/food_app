/*
 * Dependencies:
 * - shared_preferences: ^2.0.15
 *
 * This file will storage all session of the app
 */

import 'package:shared_preferences/shared_preferences.dart';

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
}