import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:papro/models/formModel.dart';
import 'package:papro/providers/formProvider.dart';
import 'package:papro/screens/Forms/personalform.dart';

class storage extends StatelessWidget {
  // Box<formModel> _boxx = Hive.box('FormModel');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Draft'),
            ),
            body: Consumer(builder: ((context, ref, child) {
              final formdetails = ref.watch(formModelProvider);
              // final formdetails = _boxx.values.toList();
              return ListView(
                children: [
                  Center(
                    child: Text(
                      'Personal Form',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Full Name',
                      //     details: formdetails[0].fullNamepersonal!),
                      // FormCallMethod(formdetails,
                      //     title: 'Email', details: formdetails[0].email!),
                      // FormCallMethod(formdetails,
                      //     title: 'Age', details: '${formdetails[0].age!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Handicapped Type Id',
                      //     details: '${formdetails[0].handicappedidpersonal!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Mobile Number',
                      //     details: '${formdetails[0].mobilenumber!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Pan Number',
                      //     details: formdetails[0].pannumber!),
                    ]),
                  ),
                  Center(
                    child: Text(
                      'Address Form',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Temporary Province',
                      //     details: formdetails[0].tempProv!),
                      // FormCallMethod(formdetails,
                      //     title: 'Temporary Municipality',
                      //     details: formdetails[0].tempMuni!),
                      // FormCallMethod(formdetails,
                      //     title: 'Temporary District',
                      //     details: formdetails[0].tempdistrict!),
                      // FormCallMethod(formdetails,
                      //     title: 'Temporary Street/Tol',
                      //     details: formdetails[0].tempstreettol!),
                      // FormCallMethod(formdetails,
                      //     title: 'Temporary Block No.',
                      //     details: '${formdetails[0].tempblockno!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Permanent Province',
                      //     details: formdetails[0].permProv!),
                      // FormCallMethod(formdetails,
                      //     title: 'Permanent Municipality',
                      //     details: formdetails[0].tempMuni!),
                      // FormCallMethod(formdetails,
                      //     title: 'Permanent District',
                      //     details: formdetails[0].permdistrict!),
                      // FormCallMethod(formdetails,
                      //     title: 'Permanent Street/Tol',
                      //     details: formdetails[0].permstreettol!),
                      // FormCallMethod(formdetails,
                      //     title: 'Permanent Block No.',
                      //     details: '${formdetails[0].permblocknoaddress!}'),
                    ]),
                  ),
                  Center(
                    child: Text(
                      'Family Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Father Name',
                      //     details: formdetails[0].fatherdetails!),
                      // FormCallMethod(formdetails,
                      //     title: 'Mother Name',
                      //     details: formdetails[0].motherdetails!),
                      // FormCallMethod(formdetails,
                      //     title: 'Spouse Name',
                      //     details: formdetails[0].spousename!),
                      // FormCallMethod(formdetails,
                      //     title: 'Grandfather Name',
                      //     details: formdetails[0].grandfathername!),
                      // FormCallMethod(formdetails,
                      //     title: 'Grandmother Name',
                      //     details: formdetails[0].grandmothername!),
                      // FormCallMethod(formdetails,
                      //     title: ' Son Name', details: formdetails[0].sonname!),
                      // FormCallMethod(formdetails,
                      //     title: 'Daughter Name',
                      //     details: formdetails[0].daughtername!),
                      // FormCallMethod(formdetails,
                      //     title: 'Total Son',
                      //     details: '${formdetails[0].totalson!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Total Daughter',
                      //     details: '${formdetails[0].totaldaughter!}'),
                    ]),
                  ),
                  Center(
                    child: Text(
                      'Working Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Job Type', details: formdetails[0].jobtype!),
                      // FormCallMethod(formdetails,
                      //     title: 'Job Organization',
                      //     details: formdetails[0].joborganization!),
                      // FormCallMethod(formdetails,
                      //     title: 'Organization Address',
                      //     details: formdetails[0].organizationaddress!),
                      // FormCallMethod(formdetails,
                      //     title: 'Designation',
                      //     details: formdetails[0].designation!),
                      // FormCallMethod(formdetails,
                      //     title: 'Annual Income',
                      //     details: '${formdetails[0].annualincome!}'),
                    ]),
                  ),
                  Center(
                    child: Text(
                      'Etencities Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Nationalism or Religion',
                      //     details: formdetails[0].nationalismandreligion!),
                      // FormCallMethod(formdetails,
                      //     title: 'Nationality',
                      //     details: formdetails[0].nationality!),
                      // FormCallMethod(formdetails,
                      //     title: 'Religion', details: formdetails[0].religion!),
                      // FormCallMethod(formdetails,
                      //     title: 'Ethnic Group',
                      //     details: formdetails[0].ethnicgroup!),
                    ]),
                  ),
                  Center(
                    child: Text(
                      'Expenses Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Total Month Income',
                      //     details: '${formdetails[0].totalmonthlyincome!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Income Source',
                      //     details: formdetails[0].incomesource!),
                      // FormCallMethod(formdetails,
                      //     title: 'Income Source Mainly',
                      //     details: formdetails[0].incomesourceman!),
                      // FormCallMethod(formdetails,
                      //     title: 'Expense Category  ',
                      //     details: formdetails[0].expensecategory),
                      // FormCallMethod(formdetails,
                      //     title: 'Total Expense',
                      //     details: '${formdetails[0].totalexpense!}'),
                    ]),
                  ),
                  Center(
                    child: Text(
                      'Food Consumption Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      FormCallMethod(formdetails,
                          title: 'Food Consumption Timing',
                          details: formdetails[0].foodconsumptiontiming!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      FormCallMethod(
                        formdetails,
                        title: 'Regular Meal Description',
                        details: formdetails[0].regularmealdescription!,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'House Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'House Address',
                      //     details: formdetails[0].Houseaddress!),
                      // FormCallMethod(formdetails,
                      //     title: 'Block Number',
                      //     details: '${formdetails[0].Blocknumber!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Street Name',
                      //     details: formdetails[0].Streetname!),
                      // FormCallMethod(formdetails,
                      //     title: 'House Number',
                      //     details: '${formdetails[0].Housenumber!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Total Type Id',
                      //     details: formdetails[0].toilettypeid!),
                    ]),
                  ),
                  Center(
                    child: Text(
                      'Citizenship Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Business Profile',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Business Org',
                      //     details: formdetails[0].businessorg!),
                      // FormCallMethod(formdetails,
                      //     title: 'Business Type Id',
                      //     details: '${formdetails[0].businesstypeid!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Organization Name',
                      //     details: formdetails[0].orgname!),
                      // FormCallMethod(formdetails,
                      //     title: 'Total Investment',
                      //     details: '${formdetails[0].totalinvestment!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Annual Income',
                      //     details: '${formdetails[0].annualincomeorg!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Annual Expenses',
                      //     details: '${formdetails[0].annualxpense!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Total No. of Staff',
                      //     details: '${formdetails[0].totalnostaff!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Business Area',
                      //     details: formdetails[0].businessarea!),
                      // FormCallMethod(formdetails,
                      //     title: 'Business Product',
                      //     details: formdetails[0].businessproduct!),
                    ]),
                  ),
                  Center(
                    child: Text(
                      'School Profile',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'School Name',
                      //     details: formdetails[0].schoolname!),
                      // FormCallMethod(formdetails,
                      //     title: 'School Type Id',
                      //     details: formdetails[0].schooltypeid!),
                      // FormCallMethod(formdetails,
                      //     title: 'Dress Code',
                      //     details: formdetails[0].dresscode!),
                      // FormCallMethod(formdetails,
                      //     title: 'Dress Conditions',
                      //     details: formdetails[0].dresscondition!),
                      // FormCallMethod(formdetails,
                      //     title: 'Children Schema Id',
                      //     details: formdetails[0].childenschoolschemeid!),
                    ]),
                  ),
                  Center(
                    child: Text(
                      'Apperence Profile',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Skin Color',
                      //     details: formdetails[0].skincolor!),
                      // // FormCallMethod(formdetails,
                      // //     title: 'Is Handicap?',
                      // //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(
                      //   formdetails,
                      //   title: 'Handicapped Type Id',
                      //   details: formdetails[0].handicappedtypeid!,
                      // ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Citizenship Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Citezenship Number',
                      //     details: '${formdetails[0].citizenshipnumber!}'),
                      // // FormCallMethod(formdetails,
                      // //     title: 'Is Handicap?',
                      // //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(
                      //   formdetails,
                      //   title: 'Issued Place',
                      //   details: formdetails[0].issuedat!,
                      // ),
                      // // FormCallMethod(
                      // //   formdetails,
                      // //   title: 'Issued Date',
                      // //   details: formdetails[0].handicappedtypeid!,
                      // // ),

                      // FormCallMethod(
                      //   formdetails,
                      //   title: 'Verified by',
                      //   details: formdetails[0].verifiedby!,
                      // ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Extra Cariculum Activities',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Interested Field',
                      //     details: formdetails[0].interestedfieldid!),
                      // // FormCallMethod(formdetails,
                      // //     title: 'Is Handicap?',
                      // //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Professional Status',
                      //     details: formdetails[0].professionalstatus!),
                      // FormCallMethod(
                      //   formdetails,
                      //   title: 'Duration Of Activities',
                      //   details: formdetails[0].durationofactivities!,
                      // ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Children Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      FormCallMethod(formdetails,
                          title: 'Children Name',
                          details: formdetails[0].name!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      FormCallMethod(
                        formdetails,
                        title: 'Family Detail Id',
                        details: formdetails[0].familydetailid!,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Children Health',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Blood Group',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Birth Place',
                      //     details: formdetails[0].childrenbirthplace!),
                      // FormCallMethod(formdetails,
                      //     title: 'Birth Weight',
                      //     details: '${formdetails[0].chilrenbirthweight!}'),
                      // FormCallMethod(formdetails,
                      //     title: 'Birth Conditions',
                      //     details: formdetails[0].childrenbirthcondition!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),

                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),

                      // FormCallMethod(formdetails,
                      //     title: 'Genetic Disease Descrption',
                      //     details: formdetails[0]
                      //         .childrengeneticdiseasedescription!),
                      // // FormCallMethod(formdetails,
                      // //     title: 'Is Handicap?',
                      // //     details: formdetails[0].ishandicap!),

                      // FormCallMethod(formdetails,
                      //     title: 'Vaccine Details',
                      //     details: formdetails[0].childrenvaccinedetails!),
                      // FormCallMethod(
                      //   formdetails,
                      //   title: 'Vaccine Dose',
                      //   details: formdetails[0].childrenvacinedose!,
                      // ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Health Profile',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      // FormCallMethod(formdetails,
                      //     title: 'Blood Group',
                      //     details: formdetails[0].ishandicap!),
                      FormCallMethod(formdetails,
                          title: 'Birth Place',
                          details: formdetails[0].birthplace!),
                      FormCallMethod(formdetails,
                          title: 'Birth Weight',
                          details: '${formdetails[0].birthweight!}'),
                      FormCallMethod(formdetails,
                          title: 'Birth Conditions',
                          details: formdetails[0].birthcondition!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),

                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),

                      FormCallMethod(formdetails,
                          title: 'Genetic Disease Descrption',
                          details: formdetails[0].geneticdiseasedescription!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),

                      FormCallMethod(formdetails,
                          title: 'Vaccine Details',
                          details: formdetails[0].vaccinedetails!),
                      FormCallMethod(
                        formdetails,
                        title: 'Vaccine Dose',
                        details: formdetails[0].vacinedose!,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Google Map',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      FormCallMethod(formdetails,
                          title: 'Latitude', details: formdetails[0].latitude!),
                      // FormCallMethod(formdetails,
                      //     title: 'Is Handicap?',
                      //     details: formdetails[0].ishandicap!),
                      FormCallMethod(
                        formdetails,
                        title: 'Longtitude',
                        details: formdetails[0].longitude!,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              );
            }))));
  }

  Row FormCallMethod(List<formModel> formdetails,
      {required String title,
      required dynamic details,
      bool isHandicap = false}) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      Spacer(),
      Text(
        details,
        style: TextStyle(fontSize: 13, color: Colors.black),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
        height: 50,
        width: double.infinity,
        child: MaterialButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
          elevation: 5.0,
          child: Text('Submit'),
          color: Color(0xFF00a2e8),
          textColor: Colors.black,
        ),
      ),
    ]);
  }
}
