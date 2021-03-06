import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:papro/models/formModel.dart';

import 'package:papro/screens/Forms/addressform.dart';
import 'package:papro/screens/Forms/appearenceform.dart';
import 'package:papro/screens/Forms/childrenhealth.dart';
import 'package:papro/screens/Forms/extraactivitiesform.dart';
import 'package:papro/screens/Forms/foodconsumptionProfile.dart';
import 'package:papro/screens/Forms/businessprofileForm.dart';
import 'package:papro/screens/Forms/childrenDetailsform.dart';
import 'package:papro/screens/Forms/citizenshipdetailsForm.dart';
import 'package:papro/screens/Forms/ethencitiesform.dart';
import 'package:papro/screens/Forms/expenserProfileform.dart';
import 'package:papro/screens/Forms/familyForm.dart';
import 'package:papro/screens/Forms/googleMap.dart';
import 'package:papro/screens/Forms/healthProfile.dart';
import 'package:papro/screens/Forms/houseform.dart';
import 'package:papro/screens/Forms/personalform.dart';
import 'package:papro/screens/Forms/schoolprofileForm.dart';
import 'package:papro/screens/Forms/workingform.dart';
import 'package:papro/screens/buttomNavigationbar.dart';
import 'package:papro/screens/dashBoard.dart';
import 'package:papro/screens/profile.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:papro/screens/storage.dart';

final boxB = Provider<List<formModel>>((ref) => []);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter(); //hive initalize
  Hive.registerAdapter(formModelAdapter()); // hive register
  final box = await Hive.openBox<formModel>('FormModel'); //hive open box
  // await Hive.openBox<Transistion>('tempTrans');
  runApp(
    ProviderScope(
      overrides: [boxB.overrideWithValue(box.values.toList())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            //MyHomePageabc(),
            //appearenceProfile(),
            //storage(),
            //transistionShow(),

            //healthProfileForm(),
            //childrenhealthProfile(),
            //personalForm(),
            //transistionForm(),
            //foodconsumptionProfile(),
            // appearanceProfile(),
            //addressForm(),
            //  dashBoard(),

            MyHomePage(),
        routes: {
          personalForm.routeName: (context) => personalForm(),
          addressForm.routeName: (context) => addressForm(),
          familyform.routeName: (context) => familyform(),
          workingform.routeName: (context) => workingform(),
          ethencitiesform.routName: (context) => ethencitiesform(),
          expensesprofileform.routeName: (context) => expensesprofileform(),
          foodconsumptionProfile.routeName: (context) =>
              foodconsumptionProfile(),
          houseform.routeName: (context) => houseform(),
          citizendetailsForm.routeName: (context) => citizendetailsForm(),
          businessprofile.routName: (context) => businessprofile(),
          schoolprofile.routName: (context) => schoolprofile(),
          appearenceProfile.routeName: (context) => appearenceProfile(),
          extraactivitiesProfile.routeName: (context) =>
              extraactivitiesProfile(),
          childrendetailsForm.routeName: (context) => childrendetailsForm(),
          expensesprofileform.routeName: (context) => expensesprofileform(),
          googlemapProfile.routeName: (context) => googlemapProfile(),
          healthProfileForm.routeName: (context) => healthProfileForm(),
          childrenhealthProfile.routeName: (context) => childrenhealthProfile(),
        });
  }
}
