import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papro/screens/Forms/personalform.dart';
import 'package:papro/screens/buttomNavigationbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: personalForm(),
    );
  }
}
