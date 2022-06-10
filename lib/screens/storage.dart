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
              // final formdetails = ref.watch(formModelProvider).add(
              //       formModel(
              //           fullName: '',
              //           email: '',
              //           age: 0,
              //           handicappedid: 0,
              //           mobilenumber: 0,
              //           pannumber: 0),
              //     );
              final formdetails = ref.watch(formModelProvider);
              return Container(
                child: Column(children: [
                  Text('hello'),
                  Text(formdetails[0].pannumber!)
//                  Text(formdetails[0].email!),
                  // Text(formdetails[0].email!),
                  // Expanded(
                  //     child: ListView(
                  //   shrinkWrap: true,
                  //   children: formdetails.map((e) {
                  //     print(formdetails.length);
                  //     return Container(
                  //         child: Row(children: [
                  //       Text('helllo'),
                  //       Text(0.toString()),
                  //     ]));
                  //   })
                  // ))
                ]),
              );
            }))));
  }
}
