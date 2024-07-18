import 'package:flutter/material.dart';
import 'package:natacademy/globals.dart';

class MyButon extends StatelessWidget {
  MyButon({super.key, required this.btnText});
  String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 160, 15, 5),
        borderRadius: BorderRadius.circular(16),
      ),
      width: double.infinity,
      height: 50,
      child: Center(
          child: Text(
        btnText,
        style: TextStyle(fontSize: 18, color: titleFontColor),
      )),
    );
  }
}
