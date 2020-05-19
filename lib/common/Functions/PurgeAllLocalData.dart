import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';


///This purges all local shared preferences and Global Data;
//purgeAllLocalData() async{
//  Carnika.activeUser = null;
//  Carnika.requests = null;
//  Carnika.artisans = null;
//  Carnika.profileComplete = null;
//  Carnika.jobs = null;
//  Carnika.mode = null;
//
//  debugPrint("Purging local data:.....");
//  SharedPreferences preferences = await SharedPreferences.getInstance();
//  await preferences.clear();
//  debugPrint("Local data purged:.....");
//}
