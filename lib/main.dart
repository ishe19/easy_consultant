import 'package:flutter/material.dart';
import 'package:easy_consult/screens/AuthPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'easy co',
        theme: ThemeData(

        ),
        home: AuthPage()

    );
  }
}
