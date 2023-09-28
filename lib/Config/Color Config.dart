import 'package:flutter/cupertino.dart';

class MyColor with ChangeNotifier{
   static LinearGradient gradient = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xff1036A2),
        // Color(0xff0B438C),
        Color(0xff1A78F2)
      ]
   );
   static const darkBlue = Color(0xff0F2859);
   static const navyBlue = Color(0xff0F1430);
   static const brightBlue = Color(0xff1A78F2);
   static const lighterBlue = Color(0xff0B438C);
   static const greyWhite = Color(0xffF2F2F2);
   static const parasuitColor = Color(0xff6080BF);
   static const darkAsh = Color(0xff21274F);


}