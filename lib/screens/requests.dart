import 'package:easy_consult/utilities/uidata.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Uidata.primaryColor,
        title: Text(
          "Requests",
          style: TextStyle(color: Color(0xFF3792CB), fontSize: 24),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){

          },
          icon: Icon(LineIcons.power_off),
          color: Colors.red,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){

            },
            icon: Icon(LineIcons.search),
            color: Colors.red,
          )
        ],
      ),
    );
  }
}