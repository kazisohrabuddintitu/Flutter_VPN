import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/Config/Color%20Config.dart';
import 'package:practice/screens/premium.dart';
import 'countries.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({Key? key}) : super(key:key);

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
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
      body: Column(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 5),
                child: Text(
                  'Connecting Time',
                  style: TextStyle(fontSize: 12.0, color: Colors.white.withOpacity(0.35)),
                ),
              ),
              Text(
                '00:15:33',
                style: TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold, color: MyColor.greyWhite), // Adjust the font size and style as needed
              ),
            ],
          ),
          SizedBox(height: 30,),
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: MyColor.gradient,
            ),
            child: Center(
              child: Icon(
                Icons.power_settings_new_outlined,
                size: 40,
                color: MyColor.greyWhite,
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 70,
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: MyColor.darkAsh,
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage('images/masha.jpg'),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Netherlands',
                      style: TextStyle(fontSize: 12, color: MyColor.greyWhite,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '52.374, 4.88969',
                      style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(165, 0, 0, 0),
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
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
                  ),

              ],
            ),
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(
                            image: AssetImage('images/down-arrow.png'),
                            height: 40,
                            width: 25,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Download',
                                style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                              ),
                            ],

                          ),
                          Row(
                            children: [
                              Text(
                                '150.67 Mbp',
                                style: TextStyle(fontSize: 14,color: Colors.white),
                              ),
                              SizedBox(width: 4,),
                              Text(
                                '/s',
                                style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 80,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(
                            image: AssetImage('images/up-arrow.png'),
                            height: 40,
                            width: 25,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Upload',
                                style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                              ),
                            ],

                          ),
                          Row(
                            children: [
                              Text(
                                '300.31 Mbp',
                                style: TextStyle(fontSize: 14,color: Colors.white),
                              ),
                              SizedBox(width: 4,),
                              Text(
                                '/s',
                                style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.35)),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children:[
              Image(image: AssetImage('images/images.png'),height: 300,width: 300,)
            ]
          ),
        ],
      ),
    );
  }
}
