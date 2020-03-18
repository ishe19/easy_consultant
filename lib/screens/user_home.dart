import 'package:easy_consult/utilities/uidata.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ConsultantList extends StatefulWidget {
  ConsultantList({Key key}) : super(key: key);

  _ConsultantListState createState() => _ConsultantListState();
}

class _ConsultantListState extends State<ConsultantList> {
  final TextStyle dropdownMenuItem =
      TextStyle(color: Colors.black, fontSize: 18);

  final primary = Color(0xFF3792CB);
  final secondary = Color(0xFF0E2433);

  final List<Map> consultantList = [
    {
      "name": "Ishe Gwanaz",
      "location": "572 Statan , Ruwa",
      "type": "Computer Nerd",
      "logoText": "assets/logo.png"
    },
    {
      "name": "Nyasha Fisher",
      "location": "234 Road Kathmandu, Budaz",
      "type": "Web Dev",
      "logoText": "assets/logo1.png"
    },
    {
      "name": "Taps Magaz",
      "location": "572 Statan , Eastly",
      "type": "Game Dev",
      "logoText": "assets/animal.png"
    },
    {
      "name": "Kate Koria",
      "location": " 1212 Kasai , North Koria",
      "type": "Youtuber ",
      "logoText": "assets/rocket.png"
    },
    {
      "name": "A Lang",
      "location": "5 Statan , Norton",
      "type": " Law and Order",
      "logoText": "assets/logo.png"
    },
    {
      "name": "Paul P ",
      "location": "234 Road Kathmandu, H Park",
      "type": " Flutter Dev",
      "logoText": "assets/logo1.png"
    },
    {
      "name": "Haward",
      "location": "57 Statan , chacha",
      "type": "Plumber",
      "logoText": "assets/animal.png"
    },
    {
      "name": "Campare ",
      "location": "567 Pantan, 12483",
      "type": "Maths tutor",
      "logoText": "assets/rocket.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      appBar: AppBar(
        backgroundColor: Uidata.primaryColor,
        title: Text(
          "Consultants",
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 0),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: AnimationLimiter(
                      child: ListView.builder(
                      itemCount: consultantList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 10.0,
              horizontalOffset: 40.0,
              child: FadeInAnimation(
                child: buildList(context, index),
              ),
            ),
          );
                        // return 
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 110,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 3, color: secondary),
              image: DecorationImage(
                  image: AssetImage(consultantList[index]['logoText']),
                  fit: BoxFit.fill),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  consultantList[index]['name'],
                  style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: secondary,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(consultantList[index]['location'],
                        style: TextStyle(
                            color: primary, fontSize: 13, letterSpacing: .3)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.merge_type,
                      color: secondary,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(consultantList[index]['type'],
                        style: TextStyle(
                            color: primary, fontSize: 13, letterSpacing: .3)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
