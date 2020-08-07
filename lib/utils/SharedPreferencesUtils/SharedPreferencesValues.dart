import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp2/Constatnts/Constant.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesValues {


  /// save username password and phoneNumber  value
  static void setUsernamePassword(String username, String password,
      String phoneNumber, SharedPreferences pref) async {
    if (username == null)
      username = "";
    else if (phoneNumber == null) {
      phoneNumber = "";
    }
    try {
      if (pref == null) {
        Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
        pref = await _prefs;
      }
      var userpass = username + "," + password + "," + phoneNumber + ",";
      pref.setString(UsernamePassword, userpass);
    } catch (e) {
      print(e.toString());
    }
  }

  /// get username password and phoneNumber  value
  static Future<List<String>> getUsernamePassword(
      SharedPreferences pref) async {
    try {
      String username, phoneNumber = "";
      if (pref == null) {
        Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
        pref = await _prefs;
      }
      List<String> returnList = pref.getString(UsernamePassword).split(",");
      username = returnList[0];
      phoneNumber = returnList[2];
      if (username == "") returnList[0] = null;
      if (phoneNumber == "") returnList[2] = null;
      return returnList;
    } catch (e) {
      return null;
    }
  }
}
