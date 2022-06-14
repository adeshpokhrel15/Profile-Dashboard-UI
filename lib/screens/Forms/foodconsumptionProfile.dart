import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:grouped_checkbox/grouped_checkbox.dart';
import 'package:papro/models/checkbox.dart';
import 'package:papro/models/formModel.dart';
import 'package:papro/providers/formProvider.dart';

class foodconsumptionProfile extends StatefulWidget {
  static const routeName = "foodconsumptionProfile-form";
  @override
  State<foodconsumptionProfile> createState() => _foodconsumptionProfileState();
}

class _foodconsumptionProfileState extends State<foodconsumptionProfile> {
  final _form = GlobalKey<FormState>();

  final foodtiming = TextEditingController();

  final regulardescription = TextEditingController();
  // bool value = false;

  bool checkOrganic = false;
  bool checkBalnced = false;
  // List<String> allItemList = [
  //   'Yes',
  //   'No',
  // ];
  // static List<String> checkedItemList = [];
  // List<String> selectedItemList = checkedItemList ?? [];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Food Consumption Profile',
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is Organic?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: checkOrganic,
                      onChanged: (value) {
                        setState(() {
                          checkOrganic = !checkOrganic;
                        });
                      },
                    ) //Row
                  ],
                ),
                // Text(
                //   'Yoyo Diet?',
                //   style: TextStyle(fontSize: 20),
                // ),
                // ...buildorganic(),
                // SizedBox(
                //   height: 20,
                // ),

                // Padding(
                //   padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                //   child: Divider(
                //     height: 2.0,
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 15.0),
                //   child: Text(
                //     'Is Organic?',
                //     style: TextStyle(color: Colors.blue, fontSize: 15.0),
                //   ),
                // ),
                // GroupedCheckbox(
                //   itemList: allItemList,
                //   checkedItemList: checkedItemList,
                //   onChanged: (itemList) {
                //     setState(() {
                //       selectedItemList = itemList;
                //       print('SELECTED ITEM $itemList');
                //     });
                //   },
                //   orientation: CheckboxOrientation.HORIZONTAL,
                //   checkColor: Colors.purpleAccent,
                //   activeColor: Colors.lightBlue,
                // ),
                // SizedBox(
                //   height: 5.0,
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Row(
                //     children: <Widget>[
                //       // Text(
                //       //   'Selected Item:',
                //       //   style: TextStyle(color: Colors.blue),
                //       // ),
                //       // SizedBox(width: 4.0),
                //       Expanded(
                //         child: Text('$selectedItemList'),
                //       )
                //     ],
                //   ),
                // ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Is Balanced Diet?",
                //       style: TextStyle(color: Colors.orange),
                //     ),
                //     Spacer(),
                //     Text('Yes'),
                //     Checkbox(
                //       value: checkOrganic,
                //       onChanged: (value) {
                //         setState(() {
                //           checkOrganic = !checkOrganic;
                //         });
                //       },
                //     ),
                //     Text('No'),

                //     Checkbox(
                //       value: checkOrganic,
                //       onChanged: (value) {
                //         setState(() {
                //           checkOrganic = !checkOrganic;
                //         });
                //       },
                //     ) //Row
                //   ],
                // ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: foodtiming,
                  textCapitalization: TextCapitalization.words,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Timing is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Food Consumption Timing',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: 'Food Consumption Timing',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Regular meal description is required';
                    }

                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: regulardescription,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Regular meal description',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      hintText: "Regular meal description"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Mula'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is Balanced Diet?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Checkbox(
                      value: checkBalnced,
                      onChanged: (value) {
                        setState(() {
                          checkBalnced = !checkBalnced;
                        });
                      },
                    ) //Row
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Is Organic?",
                //       style: TextStyle(color: Colors.orange),
                //     ),
                //     Spacer(),
                //     Text('Yes'),
                //     Checkbox(
                //       value: checkOrganic,
                //       onChanged: (value) {
                //         checkOrganic = !checkOrganic;

                //         setState(() {});
                //       },
                //     ),

                //     Text('No'),
                //     Checkbox(
                //       value: !checkOrganic,
                //       onChanged: (value) {
                //         setState(() {
                //           checkOrganic = !checkOrganic;
                //         });
                //       },
                //     ) //Row
                //   ],
                // ),
                SizedBox(
                  height: 20,
                ),
                // Text(
                //   'Is Organic?',
                //   style: TextStyle(fontSize: 20),
                // ),
                // ...buildorganic(),
                // SizedBox(
                //   height: 20,
                // ),
                Container(
                  height: 50,
                  width: 150,
                  child: MaterialButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('OK'))
                                ],
                                title: const Text('Success'),
                                contentPadding: const EdgeInsets.all(20.0),
                                content:
                                    const Text('Addedd sucessfully in Draft'),
                              ));
                      _form.currentState!.save();
                      _form.currentState!.validate();
                      FocusScope.of(context).unfocus();
                      print(checkOrganic);
                      //print(checkBalnced);
                      final foodconsumptionProfileForm = formModel(
                          foodconsumptiontiming: foodtiming.text.trim(),
                          regularmealdescription:
                              regulardescription.text.trim(),
                          isbalanceddiet: checkBalnced,
                          isorganic: checkOrganic);
                      final response = ref
                          .read(formModelProvider.notifier)
                          .addForm(foodconsumptionProfileForm);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 5.0,
                    child: Text('Save as Draft'),
                    color: Color(0xFF00a2e8),
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
    });
  }
  // List <Widget> build

  // List<Widget> buildorganic() {
  //   List<Widget> widgetss = [
  //     CheckboxListTile(
  //       activeColor: Colors.green,
  //       value: checkOrganic,
  //       title: Text('Yes'),
  //       onChanged: (value) {
  //         setState(() {
  //           checkOrganic = !checkOrganic;
  //         });
  //       },
  //     ),
  //     CheckboxListTile(
  //       activeColor: Colors.green,
  //       value: !checkOrganic,
  //       title: Text('No'),
  //       onChanged: (value) {
  //         setState(() {
  //           checkOrganic = !checkOrganic;
  //         });
  //       },
  //     ),
  //   ];

  //   return widgetss;
  // }

  // Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
  //       activeColor: Colors.green,
  //       value: checkbox.value,
  //       title: Text(checkbox.title),
  //       onChanged: (value) => setState(
  //         (() => checkbox.value = value!),
  //       ),
  //     );

  // List<Widget> buildSingleCheckbox() {
  //   List<Widget> widgetss = [
  //     CheckboxListTile(
  //       activeColor: Colors.green,
  //       value: checkBalnced,
  //       title: Text('Yes'),
  //       onChanged: (value) {
  //         // Title(color: Colors.red, child: Text('Yes'));

  //         setState(() {
  //           checkOrganic = !checkOrganic;
  //         });
  //       },
  //     ),
  //     CheckboxListTile(
  //       activeColor: Colors.green,
  //       value: !checkBalnced,
  //       title: Text('No'),
  //       onChanged: (value) => setState(
  //         (() => checkBalnced = false),
  //       ),
  //     ),
  //   ];

  //   return widgetss;
  // }
}
