import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  static String id = 'Profile';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Profile'),
          backgroundColor: const Color.fromARGB(255, 160, 15, 5),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Tab 1',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: 'Tab 2',
              icon: Icon(Icons.star),
            ),
            Tab(
              text: 'Tap 3',
              icon: Icon(Icons.person),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          Center(child: Text('Tab 1 content')),
          Center(child: Text('Tab 2 content')),
          Center(child: Text('Tab 2 content')),
        ]),
      ),
    );
  }
}
