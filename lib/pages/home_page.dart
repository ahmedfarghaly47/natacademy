import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:natacademy/globals.dart';
import 'package:natacademy/widgets/app_bar.dart';
import 'package:natacademy/widgets/my_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  // const HomePage({super.key});

  // late String fnum;

  @override
  _HomeState createState() => _HomeState();
}

// Future<String> getFamilynum() async {
//   final fnum = await SharedPreferences.getInstance();
//   return fnum.getString("key_fn") ?? '';
// }

String fnum = '';

class _HomeState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  Future<String> getFamilynum(String key) async {
    final prefs = await SharedPreferences.getInstance();
    fnum = prefs.getString(key) ?? '';
    return fnum;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: const MyAppBar(
          title: 'Natatif Academy',
        ),
        drawer: const MyDrawer(),
        body: Container(
          // color: const Color.fromARGB(255, 160, 15, 5),
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(45),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/images/logo.jpg"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
