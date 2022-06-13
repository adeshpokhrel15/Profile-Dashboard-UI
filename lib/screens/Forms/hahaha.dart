import 'package:flutter/material.dart';

//importing material design library

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;

  @override
//App widget tree
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GeeksforGeeks'),
              backgroundColor: Colors.greenAccent[400],
              leading: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Menu',
                onPressed: () {},
              ), //IconButton
            ), //AppBar
            body: Center(
                /** Card Widget **/
                child: Card(
                    child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                            width: 430,
                            height: 700,
                            child: Column(children: [
                              Text(
                                'Algorithms',
                                style: TextStyle(
                                    color: Colors.greenAccent[400],
                                    fontSize: 30), //TextStyle
                              ), //Text
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Remember Me",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (value) {
                                      isChecked = !isChecked;
                                      setState(() {});
                                    },
                                  ) //Row
                                ],
                              ), //Column
                              //SizedBox
                              //Padding
                              //Card
                              //Center//Center
                              //Scaffold
                            ]))))))); //MaterialApp
  }
}
