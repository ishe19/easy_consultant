import 'package:easy_consult/utilities/uidata.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ActiveJobs extends StatefulWidget {
  @override
  _ActiveJobsState createState() => _ActiveJobsState();
}

class _ActiveJobsState extends State<ActiveJobs> {
// Temporary lists for popuating the Listview, data will be retrieved from database and parsed to lists and parsed into ListView

  List<String> jobsTemp = [
    "Car Service",
    "Application Development",
    "Therapy Session",
    "Stock Broker Consultation",
    "Insurance Review",
    "Law Consultation"
  ];

  List<String> startDateTemp = [
    "18-01-2020",
    "24-12-2019",
    "12-02-2020",
    "15-02-2020",
    "25-02-2020",
    "27-01-2020"
  ];

  List<String> durationTemp = [
    "7 Days",
    "72 Days",
    "14 Days",
    "2 Days",
    "4 Days",
    "5 Days"
  ];

  final List<Map> consultantList = [
    {
      "name": "Ishe Gwangwanyu",
      "location": "572 Statan , Ruwa",
      "type": "Computer Nerd",
      "logoText": "assets/logo.png"
    },
    {
      "name": "Nyasha Hove",
      "location": "234 Road Kathmandu, Budaz",
      "type": "Web Dev",
      "logoText": "assets/logo1.png"
    },
    {
      "name": "Tapiwa Maguwu",
      "location": "572 Statan , Eastly",
      "type": "Game Dev",
      "logoText": "assets/animal.png"
    },
    {
      "name": "Kate Katedza",
      "location": " 1212 Kasai , North Koria",
      "type": "Youtuber ",
      "logoText": "assets/rocket.png"
    },
    {
      "name": "Adrian Lang",
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Active Jobs",style: TextStyle(color: Color(0xFF3792CB), fontSize: 24)),
        centerTitle: true,
        backgroundColor: Uidata.primaryColor,
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
      body: FutureBuilder(builder: (context, snapshot) {
      return AnimationLimiter(
        child:ListView.builder(
          itemCount: consultantList.length,
          itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              horizontalOffset: 40.0,
              // duration: Duration(),
              verticalOffset: 10.0,
              child: FadeInAnimation(
                child: jobCard(index, jobsTemp[index], startDateTemp[index],
              durationTemp[index], consultantList[index]['name']),
              ),
            ),
          );
        },
        )
          );
    }));
  }

  //    ============ Widget for displaying the active jobs =================

  Widget jobCard(
      int index, String jobs, String date, String duration, String consultant) {
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
          height: 130.0,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset("assets/contraxt2.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,),
                    child: Text(jobs, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0,),
                      child: Text("Consultant:"),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0,),
                      child: Text(consultant),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0,),
                      child: Text("Duration:"),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0,),
                      child: Text(duration),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
