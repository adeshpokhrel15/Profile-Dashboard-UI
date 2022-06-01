import 'package:flutter/material.dart';

class personalForm extends StatelessWidget {
  final nameController = TextEditingController();

  final mailController = TextEditingController();

  final ageController = TextEditingController();

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
                            controller: nameController,
                            textCapitalization: TextCapitalization.words,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Full Name',
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Enter your Full Name',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: mailController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Email',
                                prefixIcon: Icon(Icons.email),
                                hintText: "test@gmail.com"),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: mailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Age',
                              prefixIcon: Icon(Icons.calendar_today),
                              hintText: "Enter your Age",
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: mailController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Gender',
                                hintText: "Enter your Gender"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: mailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'DOB',
                              hintText: "Date of Birth",
                              prefixIcon: Icon(Icons.calendar_today),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: mailController,
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
                            keyboardType: TextInputType.emailAddress,
                            controller: mailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Mobile Number',
                              hintText: "+9779*******",
                              prefixIcon: Icon(
                                Icons.call,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: mailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Pan Number',
                              prefixIcon: Icon(
                                Icons.pin,
                              ),
                              hintText: "Enter your Pan Number",
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // TextFormField(
                          //   obscureText: _isObscure,
                          //   controller: passwordController,
                          //   decoration: InputDecoration(
                          //       border: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular(30),
                          //       ),
                          //       suffixIcon: IconButton(
                          //           icon: Icon(_isObscure
                          //               ? Icons.visibility
                          //               : Icons.visibility_off),
                          //           onPressed: () {
                          //             // setState(() {
                          //             //   _isObscure = !_isObscure;
                          //             // }
                          //             //);
                          //           }),
                          //       hintText: 'Password'),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          TextFormField(
                            controller: bloodgroupController,
                            textCapitalization: TextCapitalization.words,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Blood Group',
                              prefixIcon: Icon(
                                Icons.bloodtype,
                              ),
                              hintText: 'Enter your Blood Group',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            child: MaterialButton(
                              onPressed: () {},
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
}
