import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:papro/models/formModel.dart';
import 'package:papro/providers/formProvider.dart';

class workingform extends StatefulWidget {
  static const routeName = 'working-form';

  @override
  State<workingform> createState() => _workingformState();
}

class _workingformState extends State<workingform> {
  final _form = GlobalKey<FormState>();

  final jobtype = TextEditingController();

  final joborganization = TextEditingController();

  final organizationaddress = TextEditingController();

  final annualincome = TextEditingController();

  final designation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Center(
                  child: Text(
                    'Working Details',
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
                                controller: jobtype,
                                textCapitalization: TextCapitalization.words,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Job Type is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Job Type',
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  hintText: 'Job Type',
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
                                    return 'Job Organization is required';
                                  }

                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: joborganization,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Job Organization',
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.orange,
                                    ),
                                    hintText: " Job Organization"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Organization Address is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: organizationaddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Organization Address ',
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: "Organization Address ",
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
                                    return 'Annual Income is required ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: annualincome,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelText: 'Annual Income'),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Designation ';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: designation,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Designation',
                                  prefixIcon: Icon(
                                    Icons.block,
                                    color: Colors.blue,
                                  ),
                                  hintText: "Designation",
                                ),
                              ),
                              SizedBox(
                                height: 30,
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
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Text('OK'))
                                              ],
                                              title: const Text('Success'),
                                              contentPadding:
                                                  const EdgeInsets.all(20.0),
                                              content: const Text(
                                                  'Addedd sucessfully in Draft'),
                                            ));
                                    final workingForm = formModel(
                                        jobtype: jobtype.text.trim(),
                                        joborganization:
                                            joborganization.text.trim(),
                                        organizationaddress:
                                            organizationaddress.text.trim(),
                                        designation: designation.text.trim(),
                                        annualincome: double.parse(
                                            annualincome.text.trim()));
                                    final response = ref
                                        .read(formModelProvider.notifier)
                                        .addForm(workingForm);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(22.0)),
                                  elevation: 5.0,
                                  child: Text('Save as Draft'),
                                  color: Color(0xFF00a2e8),
                                  textColor: Colors.black,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ))));
    });
  }
}
