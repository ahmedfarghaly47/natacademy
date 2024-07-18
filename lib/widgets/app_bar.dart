import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natacademy/globals.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      actions: const [
        Image(image: AssetImage('assets/images/logo2.png')),
      ],
      title: Text(
        title,
        // style: GoogleFonts.pacifico(
        //   textStyle: const TextStyle(fontSize: 25, color: Colors.black),
        // ),
        style: const TextStyle(
            fontFamily: 'calibri',
            fontSize: titelFontSize,
            fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //     colors: [primaryColor, backColor],
            //     transform: GradientRotation(0)),

            color: Colors.white),
      ),
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}
