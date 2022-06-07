import 'package:flutter/material.dart';

class businessprofile extends StatelessWidget {
  static const routName = "businessprofile-form";
  final _form = GlobalKey<FormState>();

  final businessorg = TextEditingController();

  final businesstypeid = TextEditingController();

  final orgname = TextEditingController();

  final totalinvestment = TextEditingController();

  final annualincome = TextEditingController();

  final annualexpense = TextEditingController();

  final totalnostaff = TextEditingController();

  final businessarea = TextEditingController();

  final businessproduct = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Center(
                child: Text(
                  'Business Profile Form',
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
                              controller: businessorg,
                              textCapitalization: TextCapitalization.words,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Business organization required';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Business org ',
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.blue,
                                ),
                                hintText: 'Business org ',
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
                                  return 'Business type id is required';
                                }

                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: businesstypeid,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Business type id',
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.orange,
                                  ),
                                  hintText: "Business type id"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Organization name is required ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: orgname,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Organization name ',
                                prefixIcon: Icon(
                                  Icons.calendar_today,
                                  color: Colors.lightBlue,
                                ),
                                hintText: "Organization name ",
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
                                  return 'Total investment is required ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: totalinvestment,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Total investment',
                                  hintText: 'Total investment'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Annual income is required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: annualincome,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Annual income',
                                prefixIcon: Icon(
                                  Icons.block,
                                  color: Colors.blue,
                                ),
                                hintText: "Annual income",
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
                                  return 'Total No. of staff is required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: totalnostaff,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Total No. of staff',
                                prefixIcon: Icon(
                                  Icons.block,
                                  color: Colors.blue,
                                ),
                                hintText: "Total No. of staff",
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
                                  return 'Business area is required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: businessarea,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Business area',
                                prefixIcon: Icon(
                                  Icons.block,
                                  color: Colors.blue,
                                ),
                                hintText: "Business area",
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
                                  return 'Business product is required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: businessproduct,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Business product',
                                prefixIcon: Icon(
                                  Icons.block,
                                  color: Colors.blue,
                                ),
                                hintText: "Business product",
                              ),
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
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0)),
                                elevation: 5.0,
                                child: Text('Submit'),
                                color: Color(0xFF00a2e8),
                                textColor: Colors.black,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ))));
  }
}
