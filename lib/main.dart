import 'package:flutter/material.dart';
import 'package:papro/screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myProfile(),
    );
  }
}
