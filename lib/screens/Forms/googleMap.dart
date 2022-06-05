import 'package:flutter/material.dart';

class googlemap extends StatefulWidget {
  static const routeName = "googlemap-form";
  @override
  State<googlemap> createState() => _googlemapState();
}

class _googlemapState extends State<googlemap> {
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
                'Google Map Form',
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: latitude,
                            textCapitalization: TextCapitalization.words,
                            
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Latitude',
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.blue,
                              ),
                              hintText: 'Latitude',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          
                            keyboardType: TextInputType.emailAddress,
                            controller: tempDist,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'District',
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.orange,
                                ),
                                hintText: " District Name"),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                ],
            )),
          )),
    );
  }
}
