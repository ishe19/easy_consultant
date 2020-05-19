import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

//Future<String> getToken() async {
//  SharedPreferences preferences = await SharedPreferences.getInstance();
//
//  String getToken = await preferences.getString("LastToken");
//
//  return getToken;
//}

Future<String> getCookie() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  String getCookie = await preferences.getString("Cookie");

  return getCookie;
}

Future<String> getCurrentUser() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  String getUser = await preferences.getString("User");

  return getUser;
}

///Gets the current session from the user device
Future<String> getCurrentSession() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  String getSession = await preferences.getString("Session");

  return getSession;
}

///Gets the Username / PhoneNumber from the device
Future<String> getSavedUsername() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  String getSession =  preferences.getString("Username");
  debugPrint("Username retrieved from device:  $getSession");
  return getSession;
}

///Gets the Password  from the device
Future<String> getSavedPassword() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  String getSession =  preferences.getString("Password");

  debugPrint("Password retrieved from device:   ");
  return getSession;
}