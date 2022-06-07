import 'package:flutter/material.dart';

class googlemapProfile extends StatefulWidget {
  static const routeName = "googlemap-form";
  @override
  State<googlemapProfile> createState() => _googlemapProfileState();
}

class _googlemapProfileState extends State<googlemapProfile> {
  final _form = GlobalKey<FormState>();

  final longitude = TextEditingController();

  final latitude = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Google Map',
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
                controller: longitude,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Longitude',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  hintText: 'Longitude',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.emailAddress,
                controller: latitude,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Latitude',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.orange,
                    ),
                    hintText: "Latitude"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 80,
                child: MaterialButton(
                  onPressed: () async {
                    _form.currentState!.save();
                    _form.currentState!.validate();
                    FocusScope.of(context).unfocus();
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
  }
}
