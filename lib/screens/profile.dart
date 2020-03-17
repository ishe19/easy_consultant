import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final primary = Color(0xFF3792CB);
  final secondary = Color(0xFF0E2433);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/profile.jpg'),
                fit: BoxFit.cover,
              ),//PNetworkImage(image, fit: BoxFit.cover,),

            ),
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                color:  Color(0xFF0E2433),
                                offset: Offset(5, 5),
                                blurRadius: 10.0,
                              )
                            ]

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 96.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Kate Koria", style: Theme.of(context).textTheme.title,

                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text("Youtuber",
                                      style: TextStyle(
                                      color: primary,
                                    ),
                                    ),
                                    subtitle: Text("Harare",
                                      style: TextStyle(
                                        color: primary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(child: Column(
                                  children: <Widget>[
                                    Text("285",
                                      style: TextStyle(
                                        color: primary,
                                      ),
                                    ),
                                    Text("Likes",
                                      style: TextStyle(
                                        color: primary,
                                      ),
                                    )
                                  ],
                                ),),
                                Expanded(child: Column(
                                  children: <Widget>[
                                    Text("3025",
                                      style: TextStyle(
                                        color: primary,
                                      ),
                                    ),
                                    Text("Comments",
                                      style: TextStyle(
                                        color: primary,
                                      ),
                                    )
                                  ],
                                ),),
                                Expanded(child: Column(
                                  children: <Widget>[
                                    Text("650",
                                style: TextStyle(
                                  color: primary,
                                ),
                                    ),
                                    Text("Favourites",
                                      style: TextStyle(
                                        color: primary,
                                      ),
                                    )
                                  ],
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('assets/profile.jpg'),
                                fit: BoxFit.cover
                            )
                        ),
                        margin: EdgeInsets.only(left: 16.0),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color:  Color(0xFF0E2433),
                            offset: Offset(5, 5),
                            blurRadius: 10.0,
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(title: Text("User information",
                          style: TextStyle(
                            color: primary,
                          ),
                        ),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Email",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          subtitle: Text("kate.little@gmail.com",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          leading: Icon(Icons.email),
                        ),
                        ListTile(
                          title: Text("Phone",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          subtitle: Text("+977-9815225566",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          leading: Icon(Icons.phone),
                        ),
                        ListTile(
                          title: Text("Website",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          subtitle: Text("https://www.revenant.co.zw",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          leading: Icon(Icons.web),
                        ),
                        ListTile(
                          title: Text("About",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          subtitle: Text("Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla, illo repellendus quas beatae reprehenderit nemo, debitis explicabo officiis sit aut obcaecati iusto porro? Exercitationem illum consequuntur magnam eveniet delectus ab.",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          leading: Icon(Icons.person),
                        ),
                        ListTile(
                          title: Text("Joined Date",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          subtitle: Text("15 February 2019",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          leading: Icon(Icons.calendar_view_day),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          ],
        ),
      ),
    );
  }
}