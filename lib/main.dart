import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papro/calender/dateutils.dart';
import 'package:papro/screens/Forms/personalform.dart';
import 'package:papro/screens/buttomNavigationbar.dart';
import 'package:papro/screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: calender(),
    );
  }
}
