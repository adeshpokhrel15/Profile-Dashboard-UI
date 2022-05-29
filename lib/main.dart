import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papro/screens/dashBoard.dart';
import 'package:papro/screens/profile.dart';
import 'package:papro/screens/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          //dashBoard()
          //    settingPage(),
          myProfile(),
    );
  }
}
