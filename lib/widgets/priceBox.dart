import 'package:flutter/material.dart';
import 'package:practice/Config/Color%20Config.dart';

class priceBox extends StatelessWidget {
  final String title;
  final String time;
  const priceBox({super.key, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 140,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: MyColor.darkAsh,
            ),
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    time,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.35),
                      fontSize: 12,
                    ),
                  ),
                ]
              ),
            ),
          ),
      ],
    );
  }
}

