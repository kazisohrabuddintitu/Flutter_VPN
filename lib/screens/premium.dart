import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/Config/Color%20Config.dart';
import 'package:practice/widgets/priceBox.dart';

import 'homepage.dart';

class premium extends StatefulWidget {
  const premium({Key? key}): super(key:key);

  @override
  State<premium> createState() => _premiumState();
}

class _premiumState extends State<premium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.navyBlue,
      body: Column(
        children: [
          SizedBox(height: 60,),
          Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back_ios_new, color: Colors.white.withOpacity(0.7)),
                    ),
                    SizedBox(width: 125),
                    Center(
                        child: Text(
                          'Go Premium',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                    ),
                  ],
                ),
              ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Get access to all',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),

              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'countries and features',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),

              )
            ],
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Congrats, you earned a new badge',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.35),
                ),

              )
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'and become an Intermediate',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.35),
                ),

              )
            ],
          ),
          SizedBox(height: 35,),
          Wrap(
            spacing: 18,
            runSpacing: 20,
            children: [
              priceBox(title: 'Free' , time: '7 days'),
              priceBox(title: '\$10',time: '30 days', ),
              Container(
                width: 140,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: MyColor.gradient,
                ),
                child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$56',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '3 months',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 12,
                          ),
                        ),
                      ]
                  ),
                ),
              ),
              priceBox(title: '\$199', time: 'one tme',),
            ],
          ),
          SizedBox(height: 35,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        child: Icon(Icons.check_circle, color: MyColor.brightBlue,),
                      ),
                      SizedBox(width: 6,),
                      // Text(
                      //   'Unlock over 100+ countries',
                      //   style: TextStyle(
                      //       fontSize: 14,
                      //       color: MyColor.greyWhite
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 24, // Adjust the width as needed
                        child: Icon(Icons.check_circle, color: MyColor.brightBlue,),
                      ),
                      SizedBox(width: 6,),
                      // Text(
                      //   'Unlock over 4000+ cities',
                      //   style: TextStyle(
                      //       fontSize: 14,
                      //       color: MyColor.greyWhite
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 24, // Adjust the width as needed
                        child: Icon(Icons.check_circle, color: MyColor.brightBlue,),
                      ),
                      SizedBox(width: 6,),
                      // Text(
                      //   'View more than 1000 tips',
                      //   style: TextStyle(
                      //       fontSize: 14,
                      //       color: MyColor.greyWhite
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 180,
                    child: Text(
                      'Unlock over 100+ countries',
                      style: TextStyle(
                          fontSize: 14,
                          color: MyColor.greyWhite
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 180,
                    child: Text(
                      'Unlock over 4000+ cities',
                      style: TextStyle(
                          fontSize: 14,
                          color: MyColor.greyWhite
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 180,
                    child: Text(
                      'View more than 1000 tips',
                      style: TextStyle(
                          fontSize: 14,
                          color: MyColor.greyWhite
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(50, 100, 50, 0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: MyColor.gradient,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeActivity()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(color: MyColor.greyWhite),
                  ),
                )
                ,
              )
          ),
        ],
      ),
    );
  }
}
