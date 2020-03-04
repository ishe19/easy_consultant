import 'package:flutter/material.dart';
import 'package:easy_consult/screens/List.dart';


class SchoolList extends StatefulWidget {
  SchoolList({Key key}) : super(key: key);


  _SchoolListState createState() => _SchoolListState();
}

class _SchoolListState extends State<SchoolList> {
  final TextStyle dropdownMenuItem =
  TextStyle(color: Colors.black, fontSize: 18);

  final primary = Color(0xFF3792CB);
  final secondary = Color(0xFF0E2433);

  final List<Map> schoolLists = [
    {
      "name": "Ishe Gwanaz",
      "location": "572 Statan , Ruwa",
      "type": "Computer Nerd",
      "logoText":"assets/logo.png"
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 90),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: schoolLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: secondary,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfileThreePage()),
                          );
                        },
                        icon: Icon(
                          Icons.settings_power,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        "Consultants",
                        style: TextStyle(color: Color(0xFF3792CB), fontSize: 24),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
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
                  image: AssetImage(schoolLists[index]['logoText']),
                  fit: BoxFit.fill),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  schoolLists[index]['name'],
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
                    Text(schoolLists[index]['location'],
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
                    Text(schoolLists[index]['type'],
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
