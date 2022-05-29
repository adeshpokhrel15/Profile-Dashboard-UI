import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

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
          body: Column(children: [
            Container(
              height: 300,
              width: 200,
              color: Colors.red,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 2,
                  children: [
                    cardmethod(
                        title: 'Savings',
                        image:
                            'https://th.bing.com/th/id/R.24b3df49de1aa97e660b350437e8988b?rik=tgwtU84HhFd2pg&pid=ImgRaw&r=0'),
                    cardmethod(
                        title: 'Insurence',
                        image:
                            'https://th.bing.com/th/id/OIP._2RmufX0Ot6iAagJcQImhQHaHS?pid=ImgDet&w=2400&h=2360&rs=1'),
                    cardmethod(
                        title: 'Credit',
                        image:
                            'https://th.bing.com/th/id/R.3d2cc5a40e68ff78b942b89f412726a9?rik=Z6lFVqibEDcS2g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKTj%2fXgX%2fKTjXgXo7c.jpg&ehk=doVwVpYwXJPNM6Af2GU%2b7aZfzJdLgevyqEEU7Bk7F94%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
                    cardmethod(
                        title: 'Savings',
                        image:
                            'https://th.bing.com/th/id/R.24b3df49de1aa97e660b350437e8988b?rik=tgwtU84HhFd2pg&pid=ImgRaw&r=0'),
                    cardmethod(
                        title: 'Insurence',
                        image:
                            'https://th.bing.com/th/id/OIP._2RmufX0Ot6iAagJcQImhQHaHS?pid=ImgDet&w=2400&h=2360&rs=1'),
                    cardmethod(
                        title: 'Credit',
                        image:
                            'https://th.bing.com/th/id/R.3d2cc5a40e68ff78b942b89f412726a9?rik=Z6lFVqibEDcS2g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKTj%2fXgX%2fKTjXgXo7c.jpg&ehk=doVwVpYwXJPNM6Af2GU%2b7aZfzJdLgevyqEEU7Bk7F94%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
                    cardmethod(
                        title: 'Savings',
                        image:
                            'https://th.bing.com/th/id/R.24b3df49de1aa97e660b350437e8988b?rik=tgwtU84HhFd2pg&pid=ImgRaw&r=0'),
                    cardmethod(
                        title: 'Insurence',
                        image:
                            'https://th.bing.com/th/id/OIP._2RmufX0Ot6iAagJcQImhQHaHS?pid=ImgDet&w=2400&h=2360&rs=1'),
                    cardmethod(
                        title: 'Credit',
                        image:
                            'https://th.bing.com/th/id/R.3d2cc5a40e68ff78b942b89f412726a9?rik=Z6lFVqibEDcS2g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKTj%2fXgX%2fKTjXgXo7c.jpg&ehk=doVwVpYwXJPNM6Af2GU%2b7aZfzJdLgevyqEEU7Bk7F94%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
                  ]),
            )),
          ]),
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: currentIndex,
            showElevation: true,
            itemCornerRadius: 15,
            curve: Curves.easeIn,
            onItemSelected: (index) => setState(() {
              currentIndex = index;
            }),
            items: [
              BottomNavyBarItem(
                icon: Icon(Icons.apps),
                title: Text('Home'),
                activeColor: Colors.red,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.people),
                title: Text('Users'),
                activeColor: Colors.purpleAccent,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.notifications),
                title: Text('Notifications'),
                activeColor: Colors.pink,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                activeColor: Colors.blue,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    });
  }

  Card cardmethod({required String title, required String image}) {
    return Card(
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
        ));
  }
}
