import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papro/screens/Forms/addressform.dart';
import 'package:papro/screens/Forms/businessprofileForm.dart';
import 'package:papro/screens/Forms/childrenDetailsform.dart';
import 'package:papro/screens/Forms/citizenshipdetailsForm.dart';
import 'package:papro/screens/Forms/ethencitiesform.dart';
import 'package:papro/screens/Forms/expenserProfileform.dart';
import 'package:papro/screens/Forms/familyForm.dart';
import 'package:papro/screens/Forms/houseform.dart';
import 'package:papro/screens/Forms/personalform.dart';
import 'package:papro/screens/Forms/workingform.dart';
import 'package:papro/screens/barChart.dart';
import 'package:papro/screens/buttomNavigationbar.dart';
import 'package:papro/screens/pieChart.dart';
import 'package:papro/screens/profile.dart';

class dashBoard extends StatefulWidget {
  @override
  State<dashBoard> createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Center(
              child: Text(
                'Digital Profile',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          body: ListView(children: [
            // Card(
            //   elevation: 8,
            //   child: Container(
            //     height: 230,
            //     //  height: MediaQuery.of(context).size.height * 0.3,
            //     width: double.infinity,
            //     child: barChart(),
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   height: 270,
            //   //  height: MediaQuery.of(context).size.height * 0.3,
            //   width: double.infinity,
            //   child: pieChart(),
            // ),
            // SizedBox(height: 13),
            // Center(
            //   child: Text(
            //     'Waling Nagarpalika Tathyanka',
            //     style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.green),
            //   ),
            // ),
            // SizedBox(
            //   height: 7,
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 2,
                  children: [
                    cardmethod(
                        title: 'Personal',
                        image:
                            'https://th.bing.com/th/id/R.24b3df49de1aa97e660b350437e8988b?rik=tgwtU84HhFd2pg&pid=ImgRaw&r=0',
                        routeName: personalForm.routeName),
                    cardmethod(
                        title: 'Address',
                        image:
                            'https://th.bing.com/th/id/OIP._2RmufX0Ot6iAagJcQImhQHaHS?pid=ImgDet&w=2400&h=2360&rs=1',
                        routeName: addressForm.routeName),
                    cardmethod(
                        title: 'Working Details',
                        image:
                            'https://th.bing.com/th/id/R.3d2cc5a40e68ff78b942b89f412726a9?rik=Z6lFVqibEDcS2g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKTj%2fXgX%2fKTjXgXo7c.jpg&ehk=doVwVpYwXJPNM6Af2GU%2b7aZfzJdLgevyqEEU7Bk7F94%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1',
                        routeName: workingform.routeName),
                    // cardmethod(
                    //     title: 'School',
                    //     image:
                    //         'https://th.bing.com/th/id/R.24b3df49de1aa97e660b350437e8988b?rik=tgwtU84HhFd2pg&pid=ImgRaw&r=0'),
                    // cardmethod(
                    //     title: 'Profile',
                    //     image:
                    //         'https://th.bing.com/th/id/OIP._2RmufX0Ot6iAagJcQImhQHaHS?pid=ImgDet&w=2400&h=2360&rs=1'),
                    // cardmethod(
                    //     title: 'Health Profile',
                    //     image:
                    //         'https://th.bing.com/th/id/R.3d2cc5a40e68ff78b942b89f412726a9?rik=Z6lFVqibEDcS2g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKTj%2fXgX%2fKTjXgXo7c.jpg&ehk=doVwVpYwXJPNM6Af2GU%2b7aZfzJdLgevyqEEU7Bk7F94%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
                    cardmethod(
                        title: 'Family',
                        image:
                            'https://th.bing.com/th/id/R.24b3df49de1aa97e660b350437e8988b?rik=tgwtU84HhFd2pg&pid=ImgRaw&r=0',
                        routeName: familyform.routeName),
                    cardmethod(
                        title: 'Children Details',
                        image:
                            'https://th.bing.com/th/id/OIP._2RmufX0Ot6iAagJcQImhQHaHS?pid=ImgDet&w=2400&h=2360&rs=1',
                        routeName: childrenForm.routeName),
                    cardmethod(
                        title: 'Citizenship Details',
                        image:
                            'https://th.bing.com/th/id/R.3d2cc5a40e68ff78b942b89f412726a9?rik=Z6lFVqibEDcS2g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKTj%2fXgX%2fKTjXgXo7c.jpg&ehk=doVwVpYwXJPNM6Af2GU%2b7aZfzJdLgevyqEEU7Bk7F94%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1',
                        routeName: citizendetailsForm.routeName),
                    cardmethod(
                        title: 'Business Profile',
                        image:
                            'https://th.bing.com/th/id/OIP._2RmufX0Ot6iAagJcQImhQHaHS?pid=ImgDet&w=2400&h=2360&rs=1',
                        routeName: businessprofile.routName),
                    cardmethod(
                        title: 'Ethnicities',
                        image:
                            'https://th.bing.com/th/id/R.3d2cc5a40e68ff78b942b89f412726a9?rik=Z6lFVqibEDcS2g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKTj%2fXgX%2fKTjXgXo7c.jpg&ehk=doVwVpYwXJPNM6Af2GU%2b7aZfzJdLgevyqEEU7Bk7F94%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1',
                        routeName: ethencitiesform.routName),
                    cardmethod(
                        title: 'House form',
                        image:
                            'https://th.bing.com/th/id/OIP._2RmufX0Ot6iAagJcQImhQHaHS?pid=ImgDet&w=2400&h=2360&rs=1',
                        routeName: houseform.routeName),
                    // cardmethod(
                    //     title: 'Children School Schema',
                    //     image:
                    //         'https://th.bing.com/th/id/R.3d2cc5a40e68ff78b942b89f412726a9?rik=Z6lFVqibEDcS2g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKTj%2fXgX%2fKTjXgXo7c.jpg&ehk=doVwVpYwXJPNM6Af2GU%2b7aZfzJdLgevyqEEU7Bk7F94%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
                    // cardmethod(
                    //     title: 'Food Consumption Profile',
                    //     image:
                    //         'https://th.bing.com/th/id/OIP._2RmufX0Ot6iAagJcQImhQHaHS?pid=ImgDet&w=2400&h=2360&rs=1'),
                    cardmethod(
                        title: 'Expenses Profile',
                        image:
                            'https://th.bing.com/th/id/R.3d2cc5a40e68ff78b942b89f412726a9?rik=Z6lFVqibEDcS2g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKTj%2fXgX%2fKTjXgXo7c.jpg&ehk=doVwVpYwXJPNM6Af2GU%2b7aZfzJdLgevyqEEU7Bk7F94%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1',
                        routeName: expensesprofileform.routeName)
                  ]),
            ),
          ]),

          // bottomNavigationBar: BottomNavyBar(
          //   selectedIndex: currentIndex,
          //   showElevation: true,
          //   itemCornerRadius: 15,
          //   curve: Curves.easeIn,
          //   onItemSelected: (index) => setState(() {
          //     currentIndex = index;
          //   }),
          //   items: [
          //     BottomNavyBarItem(
          //       icon: Icon(Icons.apps),
          //       title: Text('Profile'),
          //       activeColor: Colors.red,
          //       textAlign: TextAlign.center,
          //     ),
          //     BottomNavyBarItem(
          //       icon: Icon(Icons.people),
          //       title: Text('Users'),
          //       activeColor: Colors.purpleAccent,
          //       textAlign: TextAlign.center,
          //     ),
          //     BottomNavyBarItem(
          //       icon: Icon(Icons.settings),
          //       title: Text('Settings'),
          //       activeColor: Colors.blue,
          //       textAlign: TextAlign.center,
          //     ),
          //   ],
          // ),
        ),
      );
    });
  }

  // Card cardmethod({required String title, required String image, required Function onTap}) {
  cardmethod(
      {required String title,
      required String image,
      required String routeName}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                image,
                height: 128,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 20),
              ),
            ],
          )),
    );
  }
}
