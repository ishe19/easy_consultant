
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

///Not in Use
//  saveCurrentLogin(Map responseJson) async {
//    SharedPreferences preferences = await SharedPreferences.getInstance();
//
//
//    var user;
//    if ((responseJson != null && !responseJson.isEmpty)) {
//      user = LoginModel.fromJson(responseJson).phoneNumber;
//    } else {
//      user = "";
//    }
////    var token = (responseJson != null && !responseJson.isEmpty) ? LoginModel.fromJson(responseJson).token : "";
////    var email = (responseJson != null && !responseJson.isEmpty) ? LoginModel.fromJson(responseJson).username : "";
////    var pk = (responseJson != null && !responseJson.isEmpty) ? LoginModel.fromJson(responseJson).userId : 0;
//
////    await preferences.setString('LastUser', (user != null && user.length > 0) ? user : "");
////    await preferences.setString('LastToken', (token != null && token.length > 0) ? token : "");
////    await preferences.setString('LastEmail', (email != null && email.length > 0) ? email : "");
////    await preferences.setInt('LastUserId', (pk != null && pk > 0) ? pk : 0);
//
//  }
///Not in Use
//  saveCurrentCookie(String cookie) async {
//    SharedPreferences preferences = await SharedPreferences.getInstance();
//
//    await preferences.setString('Cookie', (cookie != null && cookie.length > 0 ) ? cookie : '');
//  }

///Saves the Current User
//  saveCurrentUser(UserModel user) async {
//
//  SharedPreferences preferences = await SharedPreferences.getInstance();
//
//  ///Convert User to json
//  String userJson = json.encode(user.toJson());
//
//  ///Save User
//  await preferences.setString('User', (userJson != null && userJson.length > 0 ) ? userJson : '');
//  print("User Saved....");
//}

///Save the current Session to the device
//  saveCurrentSession(Session session) async {
//
//    SharedPreferences preferences = await SharedPreferences.getInstance();
//
//    String sessionJson;
//    if ((session != null)) {
//      sessionJson = jsonEncode(session.toJson());
//    } else {
//      sessionJson = "";
//    }
//
//    await preferences.setString('Session', (sessionJson != null && sessionJson.length > 0) ? sessionJson : "");
//    print("Session Saved");
//  }

  ///SaveCurrentUsername and PasswordCredential
//  saveLoginCredentials(String username, String password) async{
//    SharedPreferences preferences = await SharedPreferences.getInstance();
//
//    ///Saves Username / PhoneNumber
//    if(username != ""){
//      await preferences.setString('Username', (username != null && username.length > 0) ? username : "");
//      print("Username Saved");
//    }
//    ///Saves Password
//    if(password != ""){
//      await preferences.setString('Password', (password != null && password.length > 0) ? password : "");
//      print("Password Saved");
//    }
//
//    debugPrint("User $username login Credentials Saved:  ");
//
//  }



