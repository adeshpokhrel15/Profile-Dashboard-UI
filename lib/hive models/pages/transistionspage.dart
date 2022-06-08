import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:papro/hive%20models/transistionShow.dart';
import 'package:papro/hive%20models/transistionmodels.dart';
import 'package:papro/screens/Forms/healthProfile.dart';

class transistionForm extends StatefulWidget {
  static const routeName = 'address-form';

  @override
  State<transistionForm> createState() => _transistionFormState();
}

class _transistionFormState extends State<transistionForm> {
  // HiveObject init = HiveObject.initalize;

  final _form = GlobalKey<FormState>();

  final nameController = TextEditingController();

  int ind = 0;

  final bloods = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
  ];

  _saveLocally(Transistion trans) async {
    Box<Transistion> box = Hive.box<Transistion>('tempTrans');

    box.add(trans);
  }

  _saveData() async {
    Transistion trans = new Transistion();
    trans.setTransition(nameController.text, ind);

    await _saveLocally(trans);

    Box<Transistion> box = Hive.box<Transistion>('tempTrans');

    List<Transistion> transe = box.values.toList();
    // print(transe.length);
    // print(transe[0].name);
    // print(transe[0].wardNo);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Center(
                child: Text(
                  'Address Form',
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
            body: Form(
                key: _form,
                child: SingleChildScrollView(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //  crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Text(
                              'Temporary Address',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: nameController,
                            textCapitalization: TextCapitalization.words,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'provience is required';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Provience',
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.blue,
                              ),
                              hintText: 'Provience Name',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'Ward No.',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.add_circle,
                                        size: 30,
                                        color: Colors.blue,
                                      ),
                                      onTap: () {
                                        showCupertinoModalPopup(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoActionSheet(
                                            actions: [wardpicker()],
                                            cancelButton:
                                                CupertinoActionSheetAction(
                                              child: Text('Done'),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              // onPressed: () async {
                                              //   Navigator.pop(
                                              //       context);
                                              // }),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),

                                    // Center(
                                    //   child: Container(
                                    //     height: 50,
                                    //     width: 150,
                                    //     child: MaterialButton(
                                    //       onPressed: () async {
                                    //         _form.currentState!.save();
                                    //         _form.currentState!.validate();
                                    //         FocusScope.of(context).unfocus();
                                    //         _saveData();
                                    //       },
                                    //       shape: RoundedRectangleBorder(
                                    //           borderRadius:
                                    //               BorderRadius.circular(22.0)),
                                    //       elevation: 5.0,
                                    //       child: Text('Submit'),
                                    //       color: Color(0xFF00a2e8),
                                    //       textColor: Colors.black,
                                    //     ),
                                    //   ),
                                    // ),
                                    //   ],
                                    // ),
                                  ],
                                ),
                                Center(
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    child: MaterialButton(
                                      onPressed: () async {
                                        _form.currentState!.save();
                                        _form.currentState!.validate();
                                        FocusScope.of(context).unfocus();
                                        await _saveData().then(
                                            Navigator.pushNamed(context,
                                                transistionShow.routeName));
                                        // Navigator.pushNamed(
                                        //     context, healthprofile.routeName);
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22.0)),
                                      elevation: 5.0,
                                      child: Text('Submit'),
                                      color: Color(0xFF00a2e8),
                                      textColor: Colors.black,
                                    ),
                                  ),
                                ),
                                //),
                                // ),
                              ]),
                        ]),
                  ),
                )))));
  }

  Widget wardpicker() => SizedBox(
        height: 250,
        child: Center(
          child: CupertinoPicker(
              looping: true,
              itemExtent: 50,
              onSelectedItemChanged: (ind) {
                setState(() {
                  this.ind = ind;
                });
                final blood = bloods[ind];
                print(blood);
              },
              children: bloods.map((blood) {
                return Center(
                  child: Text(
                    '${blood}',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                );
              }).toList()),
        ),
      );
}
