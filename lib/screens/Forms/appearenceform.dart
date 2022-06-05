import 'package:flutter/material.dart';
import 'package:papro/models/checkbox.dart';

class appearenceProfile extends StatefulWidget {
  static const routeName = "apperenceProfile-form";
  @override
  State<appearenceProfile> createState() => _appearenceProfileState();
}

class _appearenceProfileState extends State<appearenceProfile> {
  final _form = GlobalKey<FormState>();

  final skincolor = TextEditingController();

  final handicapedid = TextEditingController();
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
            'Appearance Profile',
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
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: skincolor,
                textCapitalization: TextCapitalization.words,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Skin color is required';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Skin color',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  hintText: 'Skin color',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Is Balanced Diet?',
                style: TextStyle(fontSize: 20),
              ),
              ...notification.map(buildSingleCheckbox).toList(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Handicapped id is required';
                  }

                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                controller: handicapedid,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Handicapped Id',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.orange,
                    ),
                    hintText: "Handicapped Id"),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        activeColor: Colors.green,
        value: checkbox.value,
        title: Text(checkbox.title),
        onChanged: (value) => setState((() => checkbox.value = value!)),
      );
}
