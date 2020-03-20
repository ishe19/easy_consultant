import 'package:easy_consult/screens/auth_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'easy consultant',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xfff0f0f0)

        ),
        home: AuthPage()

    );
  }
}
