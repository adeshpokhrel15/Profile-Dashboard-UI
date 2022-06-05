import 'package:flutter/material.dart';
import 'package:papro/models/checkbox.dart';

class foodconsumptionProfile extends StatefulWidget {
  static const routeName = "foodconsumptionProfile-form";
  @override
  State<foodconsumptionProfile> createState() => _foodconsumptionProfileState();
}

class _foodconsumptionProfileState extends State<foodconsumptionProfile> {
  final _form = GlobalKey<FormState>();

  final name = TextEditingController();

  final familydetailid = TextEditingController();
  bool value = false;
  final notification = [
    CheckBoxState(
      title: 'Yes',
    ),
    CheckBoxState(title: 'No'),
  ];

  @override
  Widget build(BuildContext context) {
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
              ...notification.map(buildSingleCheckbox).toList(),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: name,
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
                controller: familydetailid,
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
              ...notification.map(buildorganic).toList(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget buildorganic(CheckBoxState checkbox) => CheckboxListTile(
        activeColor: Colors.green,
        value: checkbox.value,
        title: Text(checkbox.title),
        onChanged: (value) => setState((() => checkbox.value = value!)),
      );

  Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        activeColor: Colors.green,
        value: checkbox.value,
        title: Text(checkbox.title),
        onChanged: (value) => setState((() => checkbox.value = value!)),
      );
}
