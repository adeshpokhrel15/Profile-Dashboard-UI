import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papro/screens/Forms/addressform.dart';
import 'package:papro/screens/Forms/appearanceProfile.dart';
import 'package:papro/screens/Forms/businessprofileForm.dart';
import 'package:papro/screens/Forms/childrenDetailsform.dart';
import 'package:papro/screens/Forms/citizenshipdetailsForm.dart';
import 'package:papro/screens/Forms/ethencitiesform.dart';
import 'package:papro/screens/Forms/expenserProfileform.dart';
import 'package:papro/screens/Forms/familyForm.dart';
import 'package:papro/screens/Forms/houseform.dart';
import 'package:papro/screens/Forms/personalform.dart';
import 'package:papro/screens/Forms/schoolprofileForm.dart';
import 'package:papro/screens/Forms/workingform.dart';
import 'package:papro/screens/buttomNavigationbar.dart';
import 'package:papro/screens/dashBoard.dart';
import 'package:papro/screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            // appearanceProfile(),
            //addressForm(),
            //  dashBoard(),

            MyHomePage(),
        routes: {
          personalForm.routeName: (context) => personalForm(),
          addressForm.routeName: (context) => addressForm(),
          workingform.routeName: (context) => workingform(),
          childrenForm.routeName: (context) => childrenForm(),
          ethencitiesform.routName: (context) => ethencitiesform(),
          expensesprofileform.routeName: (context) => expensesprofileform(),
          familyform.routeName: (context) => familyform(),
          houseform.routeName: (context) => houseform(),
          citizendetailsForm.routeName: (context) => citizendetailsForm(),
          businessprofile.routName: (context) => businessprofile(),
          schoolprofile.routName: (context) => schoolprofile()
        });
  }
}
