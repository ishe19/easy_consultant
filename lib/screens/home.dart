import 'package:easy_consult/screens/requests.dart';
import 'package:easy_consult/utilities/uidata.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'user_home.dart' as userHome;
import 'active_jobs.dart' as active;
import 'requests.dart' as request;
import 'profile.dart' as list;

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {



  @override
  void initState(){
    super.initState();
  }


  int selectedIndex = 0;
  
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[

    userHome.ConsultantList(),
    active.ActiveJobs(),
    request.RequestPage(),
    list.Profile()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(0.0),
        child: FloatingActionButton(
          child: Icon(Icons.add, color: Uidata.btnColor,),
          backgroundColor: Uidata.primaryColor,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MakeRequest()));
          },
        ),
      ),
      body: Container(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Uidata.primaryColor,
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              color: Colors.red,
              backgroundColor: Uidata.primaryColor,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Colors.white,
                // tabBackgroundColor: Colors.grey[800],
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.check_circle_o,
                    text: 'Active',
                  ),
                  GButton(
                    icon: LineIcons.plus,
                    text: 'Requests',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}