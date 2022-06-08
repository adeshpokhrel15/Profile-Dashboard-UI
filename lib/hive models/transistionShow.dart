import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:papro/hive%20models/transistionmodels.dart';

class transistionShow extends StatelessWidget {
  static const routeName = 'transistionShow-form';

  initState() {
    Box<Transistion> box = Hive.box<Transistion>('tempTrans');

    List<Transistion> transe = box.values.toList();
    print(transe.length);
    print(transe[0].name);
    print(transe[0].wardNo);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Text('transistion Show'),
      ),
    ));
  }
}
