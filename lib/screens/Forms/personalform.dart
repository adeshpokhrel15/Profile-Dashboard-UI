import 'package:flutter/material.dart';

class personalForm extends StatefulWidget {
  @override
  State<personalForm> createState() => _personalFormState();
}

enum SingingCharacter { Male, Female, Others }

class _personalFormState extends State<personalForm> {
  SingingCharacter? _character = SingingCharacter.Male;

  String dropdownValue = 'A+';

  final nameController = TextEditingController();

  final mailController = TextEditingController();

  final ageController = TextEditingController();

  final genderController = TextEditingController();

  final dobController = TextEditingController();

  final htiController = TextEditingController();

  final mobileController = TextEditingController();

  final panController = TextEditingController();

  DateTime _dateTime = DateTime.now();
  final firstDate = DateTime(1900);
  final lastDate = DateTime(2021);

  final bloodgroupController = TextEditingController();

  final _form = GlobalKey<FormState>();

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Form(
                key: _form,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //r  crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Text(
                              'Personal Form',
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
                                hintText: "test@gmail.com"),
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
                            keyboardType: TextInputType.emailAddress,
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
                            keyboardType: TextInputType.emailAddress,
                            controller: dobController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'DOB',
                              hintText: "year/month/day",
                              prefixIcon: Icon(
                                Icons.calendar_today,
                                color: Colors.lightBlue,
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
                              hintText: "+9779*******",
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
                            height: 20,
                          ),
                          // Row(
                          //   children: [
                          //     Text('Blood Group'),
                          //     SizedBox(
                          //       width: 10,
                          //     ),
                          //     Column(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: <Widget>[
                          //         Text(
                          //           '$_dateTime'.split(" ")[0],
                          //           style: TextStyle(
                          //               fontSize: 12, color: Colors.black),
                          //         ),
                          //         ElevatedButton(
                          //             onPressed: () => _onDatePicker(context),
                          //             child: Text('Pick Date')),
                          //         CalendarDatePicker(
                          //             initialDate: _dateTime,
                          //             firstDate: firstDate,
                          //             lastDate: lastDate,
                          //             onDateChanged: (newData) {
                          //               setState(() {
                          //                 _dateTime = newData;
                          //               });
                          //             })
                          //       ],
                          //     ),
                          //   ],
                          // ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Blood Group',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                  textAlign: TextAlign.end,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                DropdownButton<String>(
                                  value: dropdownValue,
                                  icon: const Icon(
                                    Icons.arrow_downward,
                                  ),
                                  elevation: 20,
                                  style: const TextStyle(color: Colors.red),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.black,
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'A+',
                                    'A-',
                                    'B+',
                                    'B-',
                                    'AB+',
                                    'AB-',
                                    'O+',
                                    'O-',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Gender',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                ListTile(
                                  title: const Text('Male'),
                                  leading: Radio<SingingCharacter>(
                                    value: SingingCharacter.Male,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text('Female'),
                                  leading: Radio<SingingCharacter>(
                                    value: SingingCharacter.Female,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text('Other'),
                                  leading: Radio<SingingCharacter>(
                                    value: SingingCharacter.Others,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          // Column(
                          //   children: <Widget>[
                          //     Text(
                          //       'Gender',
                          //       style: TextStyle(
                          //           fontSize: 20,
                          //           fontWeight: FontWeight.bold,
                          //           color: Colors.blue),
                          //     ),
                          //     ListTile(
                          //       title: const Text('Male'),
                          //       leading: Radio<SingingCharacter>(
                          //         value: SingingCharacter.Male,
                          //         groupValue: _character,
                          //         onChanged: (SingingCharacter? value) {
                          //           setState(() {
                          //             _character = value;
                          //           });
                          //         },
                          //       ),
                          //     ),
                          //     ListTile(
                          //       title: const Text('Female'),
                          //       leading: Radio<SingingCharacter>(
                          //         value: SingingCharacter.Female,
                          //         groupValue: _character,
                          //         onChanged: (SingingCharacter? value) {
                          //           setState(() {
                          //             _character = value;
                          //           });
                          //         },
                          //       ),
                          //     ),
                          //     ListTile(
                          //       title: const Text('Other'),
                          //       leading: Radio<SingingCharacter>(
                          //         value: SingingCharacter.Others,
                          //         groupValue: _character,
                          //         onChanged: (SingingCharacter? value) {
                          //           setState(() {
                          //             _character = value;
                          //           });
                          //         },
                          //       ),
                          //     ),
                          //   ],
                          // ),

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
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0)),
                              elevation: 5.0,
                              child: Text('Submit'),
                              color: Color(0xFF00a2e8),
                              textColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))));
  }

  // _onDatePicker(BuildContext context) async {
  //   final DateTime? date = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(1900),
  //     lastDate: DateTime(2021),
  //   );
  //   if (date != null) {
  //     setState(() {
  //       _dateTime = date;
  //     });
  //   }
  // }
}
