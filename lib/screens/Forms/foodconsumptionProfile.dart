import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  bool _checkOrganic = false;
  bool _checkBalnced = false;

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
                Text(
                  'Is Balanced Diet?',
                  style: TextStyle(fontSize: 20),
                ),
                ...buildSingleCheckbox(),
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
                Text(
                  'Is Organic?',
                  style: TextStyle(fontSize: 20),
                ),
                ...buildorganic(),
                SizedBox(
                  height: 20,
                ),
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
                      final foodconsumptionProfileForm = formModel(
                        foodconsumptiontiming: foodtiming.text.trim(),
                        regularmealdescription: regulardescription.text.trim(),
                      );
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

  List<Widget> buildorganic() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkOrganic,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkOrganic = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkOrganic,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkOrganic = false),
        ),
      ),
    ];

    return widgetss;
  }

  // Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
  //       activeColor: Colors.green,
  //       value: checkbox.value,
  //       title: Text(checkbox.title),
  //       onChanged: (value) => setState(
  //         (() => checkbox.value = value!),
  //       ),
  //     );

  List<Widget> buildSingleCheckbox() {
    List<Widget> widgetss = [
      CheckboxListTile(
        activeColor: Colors.green,
        value: _checkBalnced,
        title: Text('Yes'),
        onChanged: (value) => setState(
          (() => _checkBalnced = true),
        ),
      ),
      CheckboxListTile(
        activeColor: Colors.green,
        value: !_checkBalnced,
        title: Text('No'),
        onChanged: (value) => setState(
          (() => _checkBalnced = false),
        ),
      ),
    ];

    return widgetss;
  }
}
