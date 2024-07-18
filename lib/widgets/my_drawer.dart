import 'dart:io';

import 'package:flutter/material.dart';
import 'package:natacademy/pages/login_page.dart';
import 'package:natacademy/pages/profile.dart';
import 'package:natacademy/pages/registration_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // to cover ther header by Drawer
        padding: EdgeInsets.zero,
        ////////////////
        children: [
          UserAccountsDrawerHeader(
              accountName: const Text('Ahmed Farghaly'),
              accountEmail: const Text('farghaly.ahmed@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child:
                    ClipOval(child: Image.asset('assets/images/profile.jpg')),
              ),
              decoration: const BoxDecoration(
                // color: Colors.pinkAccent,
                image: DecorationImage(
                    image: AssetImage('assets/images/DrawerBg.jpg'),
                    fit: BoxFit.cover),
              ),
              onDetailsPressed: () => {
                    Navigator.pop(context),
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder: (context) => const Profile()),
                    // ),
                  }),
          Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(top: 20, left: 15),
                leading: const Icon(Icons.person_add),
                title: const Text('Registration'),
                onTap: () => {
                  /* to Close Navegator */
                  Navigator.pop(context),
                  /////////////////////////
                  Navigator.pushNamed(context, RegistrationPage.id)
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => RegistrationPage(),
                  // ))
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Login'),
                onTap: () => {
                  /* to Close Navegator */
                  Navigator.pop(context),
                  /////////////////////////
                  Navigator.pushNamed(context, LoginPage.id),
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => LoginPage(),
                  // )),
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text('About'),
                onTap: () => {
                  /* to Close Navegator */
                  Navigator.pop(context),
                  /////////////////////////
                  // Navigator.popAndPushNamed(context, )
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => const Profile(),
                  // ))
                },
              ),
              ListTile(
                leading: const Icon(Icons.mail),
                title: const Text('Contact Us'),
                onTap: () => {
                  /* to Close Navegator */
                  Navigator.pop(context),
                  /////////////////////////
                  print('Contact Us Tapped')
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Exit'),
                onTap: () => {
                  /* to Close Navegator */
                  Navigator.pop(context),
                  /////////////////////////
                  exit(0)
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
