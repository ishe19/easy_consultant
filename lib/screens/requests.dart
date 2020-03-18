import 'dart:async';

import 'package:easy_consult/utilities/uidata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:line_icons/line_icons.dart';
import 'package:splashscreen/splashscreen.dart';

import 'home.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  final List<Map> requestList = [
    {
      "name": "I need a business Consultant",
      "Description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
      "Category": "Computing",
      "Budget": "400"
    },
    // {
    //   "name": "I need a business Consultant",
    //   "Description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    //   "Category": "Computing",
    //   "Budget": "400"
    // },
    // {
    //   "name": "I need a business Consultant",
    //   "Description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    //   "Category": "Computing",
    //   "Budget": "400"
    // },
    // {
    //   "name": "I need a business Consultant",
    //   "Description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    //   "Category": "Computing",
    //   "Budget": "400"
    // },
    // {
    //   "name": "I need a business Consultant",
    //   "Description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    //   "Category": "Computing",
    //   "Budget": "400"
    // },
    // {
    //   "name": "I need a business Consultant",
    //   "Description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    //   "Category": "Computing",
    //   "Budget": "400"
    // },
  ];

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
          onPressed: () {},
          icon: Icon(LineIcons.power_off),
          color: Colors.red,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: requestList.isEmpty
                ? Icon(LineIcons.plus_circle)
                : Icon(LineIcons.search),
            color: Colors.red,
          )
        ],
      ),
      body: requestList.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/no-requests.png"),
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side:
                            BorderSide(width: 2.0, color: Uidata.primaryColor)),
                    onPressed: () {},
                    color: Uidata.btnColor,
                    child: Text(
                      "Make A Request",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          : FutureBuilder(builder: (context, snapshot) {
              return AnimationLimiter(
                  child: ListView.builder(
                itemCount: requestList.length,
                itemBuilder: (context, index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: SlideAnimation(
                      horizontalOffset: 40.0,
                      // duration: Duration(),
                      verticalOffset: 10.0,
                      child: FadeInAnimation(
                        child: requestCard(
                            index,
                            requestList[index]['Description'],
                            requestList[index]['Category'],
                            requestList[index]['Budget'],
                            requestList[index]['name']),
                      ),
                    ),
                  );
                },
              ));
            }),
    );
  }

  Widget requestCard(
    int index,
    String description,
    String category,
    String budget,
    String name,
  ) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
              // color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(30.0)),
          height: 150.0,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    // width: 80,
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset("assets/contract3.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "\$$budget",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Uidata.primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text("Description:"),
                    ),
                    Expanded(
                      child: Text(
                        "$description...",
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text("Category:"),
                    ),
                    Expanded(
                      child: Text(category),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final formkey = new GlobalKey<FormState> ();

const TextStyle boldText = TextStyle(
  fontWeight: FontWeight.bold,
);

class MakeRequest extends StatefulWidget {
  @override
  _MakeRequestState createState() => _MakeRequestState();
}

class _MakeRequestState extends State<MakeRequest> {

  final form = formkey.currentState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Make A Request",
          style: TextStyle(color: Uidata.secondaryColor),
        ),
        centerTitle: true,
        leading: IconButton(
          color: Uidata.btnColor,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.cancel,
          ),
        ),
        backgroundColor: Uidata.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Form(
                key: formkey,
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      )
                    )
                  ),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: const EdgeInsets.all(
                16.0,
              ),
              hintText: "Enter Your Email or Phone",
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Your Password",
              contentPadding: const EdgeInsets.all(
                16.0,
              ),
              prefixStyle: boldText.copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Confirm Your Password",
              contentPadding: const EdgeInsets.all(
                16.0,
              ),
              prefixStyle: boldText.copyWith(color: Colors.black),
            ),
          ),
                      ],
                    ),
                  )
                )
              ),
              RaisedButton(
                child: Text("Request!"),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoadRequest()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoadRequest extends StatefulWidget {
  @override
  _LoadRequestState createState() => _LoadRequestState();
}

class _LoadRequestState extends State<LoadRequest> {
  String img = "assets/requesting.png";
  double containerHeight = 250;
  double containerWidth = 250;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      setState(() {
        img = "assets/requested1.png";
        containerHeight = 300.0;
        containerWidth = 300.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedContainer(
          width: containerWidth,
          height: containerHeight,
          child: Center(
            child: SplashScreen(
              seconds: 5,
              navigateAfterSeconds: NavbarClass(),
              photoSize: 50.0,
              image: Image.asset("$img"),
            ),
          ),
          duration: Duration(seconds: 4),
          // curve: Curves.bounceInOut,
        ),
      ),
    );
  }
}
