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
                      newMethod(formdetails,
                          title: 'Age', details: '${formdetails[0].age!}'),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              );
            }))));
  }

  Row newMethod(List<formModel> formdetails,
      {required String title, required dynamic details}) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        //'Age',
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      Spacer(),
      Text(
        details,
        // formdetails[0].fullName!,
        //'${formdetails[0].age!}',
        style: TextStyle(fontSize: 13, color: Colors.black),
      ),
      SizedBox(
        height: 30,
      ),
    ]);
  }
}
