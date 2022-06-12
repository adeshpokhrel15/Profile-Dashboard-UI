import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:papro/models/formModel.dart';
import 'package:papro/providers/formProvider.dart';
import 'package:papro/screens/Forms/personalform.dart';

class storage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Draft'),
            ),
            body: Consumer(builder: ((context, ref, child) {
              final formdetails = ref.watch(formModelProvider);
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
                      FormCallMethod(formdetails,
                          title: 'Full Name',
                          details: formdetails[0].fullNamepersonal!),
                      FormCallMethod(formdetails,
                          title: 'Email', details: formdetails[0].email!),
                      FormCallMethod(formdetails,
                          title: 'Age', details: '${formdetails[0].age!}'),
                      FormCallMethod(formdetails,
                          title: 'Handicapped Type Id',
                          details: '${formdetails[0].handicappedidpersonal!}'),
                      FormCallMethod(formdetails,
                          title: 'Mobile Number',
                          details: '${formdetails[0].mobilenumber!}'),
                      FormCallMethod(formdetails,
                          title: 'Pan Number',
                          details: formdetails[0].pannumber!),
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
                      FormCallMethod(formdetails,
                          title: 'Temporary Province',
                          details: formdetails[0].tempProv!),
                      FormCallMethod(formdetails,
                          title: 'Temporary Municipality',
                          details: formdetails[0].tempMuni!),
                      FormCallMethod(formdetails,
                          title: 'Temporary District',
                          details: formdetails[0].tempdistrict!),
                      FormCallMethod(formdetails,
                          title: 'Temporary Street/Tol',
                          details: formdetails[0].tempstreettol!),
                      FormCallMethod(formdetails,
                          title: 'Temporary Block No.',
                          details: '${formdetails[0].tempblockno!}'),
                      FormCallMethod(formdetails,
                          title: 'Permanent Province',
                          details: formdetails[0].permProv!),
                      FormCallMethod(formdetails,
                          title: 'Permanent Municipality',
                          details: formdetails[0].tempMuni!),
                      FormCallMethod(formdetails,
                          title: 'Permanent District',
                          details: formdetails[0].permdistrict!),
                      FormCallMethod(formdetails,
                          title: 'Permanent Street/Tol',
                          details: formdetails[0].permstreettol!),
                      // FormCallMethod(formdetails,
                      //     title: 'Permanent Block No.',
                      //     details: '${formdetails[0].permblockno!}'),
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
                      FormCallMethod(formdetails,
                          title: 'Father Name',
                          details: formdetails[0].fatherdetails!),
                      FormCallMethod(formdetails,
                          title: 'Mother Name',
                          details: formdetails[0].motherdetails!),
                      FormCallMethod(formdetails,
                          title: 'Spouse Name',
                          details: formdetails[0].spousename!),
                      FormCallMethod(formdetails,
                          title: 'Grandfather Name',
                          details: formdetails[0].grandfathername!),
                      FormCallMethod(formdetails,
                          title: 'Grandmother Name',
                          details: formdetails[0].grandmothername!),
                      FormCallMethod(formdetails,
                          title: ' Son Name', details: formdetails[0].sonname!),
                      FormCallMethod(formdetails,
                          title: 'Daughter Name',
                          details: formdetails[0].daughtername!),
                      FormCallMethod(formdetails,
                          title: 'Total Son',
                          details: '${formdetails[0].totalson!}'),
                      FormCallMethod(formdetails,
                          title: 'Total Daughter',
                          details: '${formdetails[0].totaldaughter!}'),
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
                      FormCallMethod(formdetails,
                          title: 'Job Type', details: formdetails[0].jobtype!),
                      FormCallMethod(formdetails,
                          title: 'Job Organization',
                          details: formdetails[0].joborganization!),
                      FormCallMethod(formdetails,
                          title: 'Organization Address',
                          details: formdetails[0].organizationaddress!),
                      FormCallMethod(formdetails,
                          title: 'Annual Income',
                          details: formdetails[0].annualincome!),
                      FormCallMethod(formdetails,
                          title: 'Designation',
                          details: formdetails[0].designation!),
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
                      FormCallMethod(formdetails,
                          title: 'Nationalism or Religion',
                          details: formdetails[0].nationalismandreligion!),
                      FormCallMethod(formdetails,
                          title: 'Nationality',
                          details: formdetails[0].nationality!),
                      FormCallMethod(formdetails,
                          title: 'Religion', details: formdetails[0].religion!),
                      FormCallMethod(formdetails,
                          title: 'Ethnic Group',
                          details: formdetails[0].ethnicgroup!),
                    ]),
                  ),
                ],
              );
            }))));
  }

  Row FormCallMethod(List<formModel> formdetails,
      {required String title, required dynamic details}) {
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
    ]);
  }
}
