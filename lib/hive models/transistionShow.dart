// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:papro/hive%20models/transistionmodels.dart';

// class tranisistionshow extends StatefulWidget {
//   @override
//   State<tranisistionshow> createState() => _tranisistionshowState();
// }

// class _tranisistionshowState extends State<tranisistionshow> {
//   initState() {
//     Box<Transistion> box = Hive.box<Transistion>('tempTrans');
//     List<Transistion> transe = box.values.toList();
//     // print(transe.length);
//     // print(transe[0].name);
//     // print(transe[0].wardNo);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TransitionShow'),
//       ),
//     );
//   }
// }

// class Box {}
