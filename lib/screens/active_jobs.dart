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
    "Therapy",
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
          title: Text("Active Jobs",
              style: TextStyle(color: Color(0xFF3792CB), fontSize: 24)),
          centerTitle: true,
          backgroundColor: Uidata.primaryColor,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(LineIcons.power_off),
            color: Colors.red,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(LineIcons.search),
              color: Colors.red,
            )
          ],
        ),
        body: FutureBuilder(builder: (context, snapshot) {
          return AnimationLimiter(
              child: ListView.builder(
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: testJobCard(
                          index,
                          jobsTemp[index],
                          startDateTemp[index],
                          durationTemp[index],
                          consultantList[index]['name']),
                    ),
                    //   child: jobCard(index, jobsTemp[index], startDateTemp[index],
                    // durationTemp[index], consultantList[index]['name']),
                  ),
                ),
              );
            },
          ));
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
            side: BorderSide(width: 2.0, color: Uidata.primaryColor)),
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
                    height: 80,
                    width: 80,
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset("assets/contraxt2.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Text(
                      jobs,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              Divider(color: Uidata.primaryColor),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: Text(
                        "Consultant:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                      ),
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
                      padding: const EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: Text(
                        "Duration:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                      ),
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

  Widget testJobCard(
      int index, String jobs, String date, String duration, String consultant) {
    return Stack(
      children: <Widget>[
        Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.5, color: Uidata.secondaryColor),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                // bottomRight:
              )),
          child: Container(
            height: 150.0,
            // color: Colors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:85.0, left: 15.0),
          child: Container(
            height: 75.0,
            // color: Colors.green,
            child: Column(
              children: <Widget>[

                Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Consultant:", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Expanded(
                        child: Text(consultant, style: TextStyle(),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                    width: 300,
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Started on:", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Expanded(
                        child: Text(date, style: TextStyle(),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                    width: 300,
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Service Duration:", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Expanded(
                        child: Text(duration, style: TextStyle(),),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Card(
            elevation: 0.2,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 0, 
              // color: Uidata.btnColor
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
                topRight: Radius.circular(20.0),
                // bottomRight:
              )),
            child: Container(
              // color: Colors.red,
              height: 75.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text("Job Title: ", style: TextStyle(color: Uidata.secondaryColor, fontWeight: FontWeight.bold,  fontSize: 18.0),),
                  ),
                  Expanded(
                    child: Text(jobs, style: TextStyle(color: Uidata.primaryColor, fontWeight: FontWeight.bold,  fontSize: 18.0),),
                  ),
                ],
              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            // padding: const EdgeInsets.only(top: 20.0),
            height: 80.0,
            child: Image.asset("assets/job.png"),
          ),
        )
      ],
    );
  }
}
