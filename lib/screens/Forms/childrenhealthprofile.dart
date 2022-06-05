import 'package:flutter/material.dart';

class childrenhealthprofile extends StatefulWidget {
  static const routeName = 'childrenhealthprofile-form';
  @override
  State<childrenhealthprofile> createState() => _childrenhealthprofileState();
}

class _childrenhealthprofileState extends State<childrenhealthprofile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Children Health Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    ));
  }
}
