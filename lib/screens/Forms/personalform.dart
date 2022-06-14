import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nepali_utils/nepali_utils.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart' as picker;
import 'package:papro/models/formModel.dart';
import 'package:papro/providers/formProvider.dart';

class personalForm extends StatefulWidget {
  static const routeName = 'personal-form';

  @override
  State<personalForm> createState() => _personalFormState();
}

enum SingingCharacter { Male, Female, Others }

class _personalFormState extends State<personalForm> {
  int index = 0;
  int ind = 0;
  final items = [
    'Male',
    'Female',
    'Others',
  ];

  final bloods = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-',
  ];
  //SingingCharacter? _character = SingingCharacter.Male;

  // String dropdownValue = 'A+';

  final nameController = TextEditingController();

  final mailController = TextEditingController();

  final ageController = TextEditingController();

  //final genderController = TextEditingController();

  final dobController = TextEditingController();

  final htiController = TextEditingController();

  final mobileController = TextEditingController();

  final panController = TextEditingController();

  DateTime _dateTime = DateTime.now();

  final bloodgroupController = TextEditingController();

  final _form = GlobalKey<FormState>();

  bool _isObscure = true;
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Center(
                  child: Text(
                    'Personal Form',
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: nameController,
                              textCapitalization: TextCapitalization.words,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'username is required';
                                }
                                if (val.length > 30) {
                                  return 'maximum user length is 30';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Full Name',
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.blue,
                                ),
                                hintText: 'Enter your Full Name',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'email is required';
                                }
                                if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(val)) {
                                  return 'Please a valid Email';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: mailController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Email',
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.orange,
                                  ),
                                  hintText: "Test@gmail.com"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Date of Birth',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                SizedBox(
                                  width: 43,
                                ),
                                InkWell(
                                  child: Icon(
                                    Icons.add_circle,
                                    size: 30,
                                    color: Colors.blue,
                                  ),
                                  onTap: () {
                                    picker.showCupertinoDatePicker(
                                      context: context,
                                      initialDate: NepaliDateTime.now(),
                                      firstDate: NepaliDateTime(2000),
                                      lastDate: NepaliDateTime(2090),
                                      language: Language.english,
                                      dateOrder: picker.DateOrder.mdy,
                                      onDateChanged: (newDate) {
                                        setState(() {
                                          dobController.text =
                                              newDate.toIso8601String();
                                        });
                                        dobController.text =
                                            newDate.toIso8601String();
                                      },
                                    );
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 10,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      dobController.text,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                      textAlign: TextAlign.end,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Please enter Age ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.phone,
                              controller: ageController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Age',
                                prefixIcon: Icon(
                                  Icons.calendar_today,
                                  color: Colors.lightBlue,
                                ),
                                hintText: "Enter your Age",
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Please enter handicapped id ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: htiController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Handicapped Type Id'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Gender',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                SizedBox(
                                  width: 90,
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
                                              actions: [buildDatePicker()],
                                              cancelButton:
                                                  CupertinoActionSheetAction(
                                                isDestructiveAction: true,
                                                child: Text('Done'),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              ),
                                            ));
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.27,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 10,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      items[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                      textAlign: TextAlign.end,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Please enter phone no ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: mobileController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Mobile Number',
                                hintText: "+97798******",
                                prefixIcon: Icon(
                                  Icons.call,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Please enter pan number ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: panController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Pan Number',
                                prefixIcon: Icon(
                                  Icons.pin,
                                  color: Colors.blue,
                                ),
                                hintText: "Enter your Pan Number",
                              ),
                            ),
                            SizedBox(
                              height: 40,
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
                                      'Blood Group',
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
                                                  actions: [buildbloodpicker()],
                                                  cancelButton:
                                                      CupertinoActionSheetAction(
                                                    child: Text('Done'),
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                  ),
                                                ));
                                      },
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 10,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          bloods[ind],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: 150,
                              child: MaterialButton(
                                onPressed: () async {
                                  _form.currentState!.save();
                                  _form.currentState!.validate();

                                  FocusScope.of(context).unfocus();
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
                                            contentPadding:
                                                const EdgeInsets.all(20.0),
                                            content: const Text(
                                                'Addedd sucessfully in Draft'),
                                          ));
                                  final personalForm = formModel(
                                    fullNamepersonal:
                                        nameController.text.trim(),
                                    email: mailController.text.trim(),
                                    pannumber: panController.text.trim(),
                                    mobilenumber:
                                        int.parse(mobileController.text.trim()),
                                    age: int.parse(ageController.text.trim()),
                                    handicappedidpersonal:
                                        int.parse(htiController.text.trim()),
                                    gender: items[index].trim(),
                                    bloodgroup: bloods[ind].trim(),
                                    dateofbirthpersonal:
                                        dobController.text.trim(),
                                  );

                                  final response = ref
                                      .read(formModelProvider.notifier)
                                      .addForm(personalForm);
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
                  ))));
    });
  }

  Widget buildDatePicker() => SizedBox(
        height: 250,
        child: Center(
          child: CupertinoPicker(
              looping: true,
              itemExtent: 50,
              onSelectedItemChanged: (index) {
                setState(() {
                  this.index = index;
                });
                final item = items[index];
                print(item);
              },
              children: items.map((item) {
                return Center(
                  child: Text(
                    item,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                );
              }).toList()),
        ),
      );

  Widget buildbloodpicker() => SizedBox(
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
                    blood,
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
