import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/Config/Color%20Config.dart';

import 'premium.dart';

class countries extends StatefulWidget {
  const countries({Key? key}) : super(key: key);

  @override
  State<countries> createState() => _countriesState();
}

class _countriesState extends State<countries> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: MyColor.navyBlue,
      drawer: Drawer(
        child: ListView(
          children:  [],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 50, 20, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              scaffoldKey.currentState!.openDrawer();
                            },
                            child: Icon(Icons.menu_rounded, color: MyColor.greyWhite,),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => premium()),);
                            },
                            child: Container(
                              height: 42,
                              width: 115,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30), // Make it circular
                                color: MyColor.darkAsh, // Add your desired background color here
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Icon(Icons., color: Colors.yellow), // Replace with your desired icon
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('images/crown.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 3), // Add some space between the icon and text
                                  Text(
                                    'Premium',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.35), // Add your desired text color here
                                      fontSize: 12, // Add your desired font size here
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                    ],
                  ),
                )

            ),
            SizedBox(height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 5),
                  child: Text(
                    'Netherlands',
                    style: TextStyle(fontSize: 12.0, color: Colors.white.withOpacity(0.35)),
                  ),
                ),
                Text(
                  '00:25:33',
                  style: TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold, color: MyColor.greyWhite),
                ),
                SizedBox(height: 8,),
                Text(
                  '52.374, 4.88969',
                  style: TextStyle(fontSize: 12.0, color: Colors.white.withOpacity(0.35)),
                ),
              ],
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: MyColor.gradient,
                ),
                child: Center(
                  child: Text(
                    'Disconnect',
                    style: TextStyle(color: Colors.white.withOpacity(0.8)),

                  ),
                ),
              ),
            ),
            SizedBox(height: 200,),
            Container(
              height: 320,
              decoration: BoxDecoration(
                color: MyColor.darkAsh,
                borderRadius: BorderRadius.circular(20)
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                        children: [
                          SizedBox(width: 40),
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('images/masha.jpg'),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'France',
                                    style: TextStyle(fontSize: 11, color: MyColor.greyWhite),
                                  ),
                                  SizedBox(width: 4,),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('images/crown.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '19 Locations',
                                    style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                                  ),
                                  SizedBox(width: 8,),
                                  Icon(Icons.network_check, size: 13, color: Colors.green,),
                                  SizedBox(width: 3,),
                                  Text(
                                    '80ms',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white.withOpacity(0.35),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(140, 0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => countries()),);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.parasuitColor.withOpacity(0.3),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                    SizedBox(height: 35,),
                    Row(
                        children: [
                          SizedBox(width: 40),
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('images/masha.jpg'),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'United States',
                                    style: TextStyle(fontSize: 11, color: MyColor.greyWhite),
                                  ),
                                  SizedBox(width: 4,),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('images/crown.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '16 Locations',
                                    style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                                  ),
                                  SizedBox(width: 8,),
                                  Icon(Icons.network_check, size: 13, color: Colors.green,),
                                  SizedBox(width: 3,),
                                  Text(
                                    '100ms',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white.withOpacity(0.35),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(134, 0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => countries()),);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.parasuitColor.withOpacity(0.3),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                    SizedBox(height: 35,),
                    Row(
                        children: [
                          SizedBox(width: 40),
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('images/masha.jpg'),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'German',
                                    style: TextStyle(fontSize: 11, color: MyColor.greyWhite),
                                  ),
                                  SizedBox(width: 4,),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('images/crown.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '19 Locations',
                                    style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                                  ),
                                  SizedBox(width: 8,),
                                  Icon(Icons.network_check, size: 13, color: Colors.green,),
                                  SizedBox(width: 3,),
                                  Text(
                                    '80ms',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white.withOpacity(0.35),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(140, 0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => countries()),);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.parasuitColor.withOpacity(0.3),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                    SizedBox(height: 35,),
                    Row(
                        children: [
                          SizedBox(width: 40),
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('images/masha.jpg'),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Canada',
                                    style: TextStyle(fontSize: 11, color: MyColor.greyWhite),
                                  ),
                                  SizedBox(width: 4,),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('images/crown.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '16 Locations',
                                    style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                                  ),
                                  SizedBox(width: 8,),
                                  Icon(Icons.network_check, size: 13, color: Colors.green,),
                                  SizedBox(width: 3,),
                                  Text(
                                    '100ms',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white.withOpacity(0.35),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(134, 0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => countries()),);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.parasuitColor.withOpacity(0.3),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                    SizedBox(height: 35,),
                    Row(
                        children: [
                          SizedBox(width: 40),
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('images/masha.jpg'),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Austria',
                                    style: TextStyle(fontSize: 11, color: MyColor.greyWhite),
                                  ),
                                  SizedBox(width: 4,),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('images/crown.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '16 Locations',
                                    style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                                  ),
                                  SizedBox(width: 8,),
                                  Icon(Icons.network_check, size: 13, color: Colors.green,),
                                  SizedBox(width: 3,),
                                  Text(
                                    '100ms',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white.withOpacity(0.35),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(134, 0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => countries()),);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.parasuitColor.withOpacity(0.3),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                    SizedBox(height: 35,),
                    Row(
                        children: [
                          SizedBox(width: 40),
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('images/masha.jpg'),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Canada',
                                    style: TextStyle(fontSize: 11, color: MyColor.greyWhite),
                                  ),
                                  SizedBox(width: 4,),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('images/crown.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '16 Locations',
                                    style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                                  ),
                                  SizedBox(width: 8,),
                                  Icon(Icons.network_check, size: 13, color: Colors.green,),
                                  SizedBox(width: 3,),
                                  Text(
                                    '100ms',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white.withOpacity(0.35),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(134, 0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => countries()),);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.parasuitColor.withOpacity(0.3),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                    SizedBox(height: 35,),
                    Row(
                        children: [
                          SizedBox(width: 40),
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('images/masha.jpg'),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Canada',
                                    style: TextStyle(fontSize: 11, color: MyColor.greyWhite),
                                  ),
                                  SizedBox(width: 4,),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('images/crown.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '16 Locations',
                                    style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                                  ),
                                  SizedBox(width: 8,),
                                  Icon(Icons.network_check, size: 13, color: Colors.green,),
                                  SizedBox(width: 3,),
                                  Text(
                                    '100ms',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white.withOpacity(0.35),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(134, 0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => countries()),);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.parasuitColor.withOpacity(0.3),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}