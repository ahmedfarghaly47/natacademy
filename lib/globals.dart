library mes.globals;

import 'dart:ui';

import 'package:flutter/material.dart';

String fNumber = "";
String acaYear = "";
String stID = "";
String stName = "";
String baseUrl = "https://localhost/app/nat";

const primaryColor = Color.fromARGB(255, 28, 83, 125);
// const backColor = Color.fromARGB(255, 227, 242, 253);
const backColor = Color.fromARGB(248, 249, 251, 253);
const cardBackColor = Color.fromRGBO(227, 233, 239, 1);
const buttonColor = Color.fromRGBO(181, 188, 196, 1);
const loginColor = Color.fromARGB(255, 28, 83, 125);
const cardIconColor = Colors.red;
const rightColor = Colors.green;
const wrongColor = Colors.redAccent;
const fontColor = Colors.black;
// const titleColor = Color.fromARGB(255, 58, 123, 183);
const titleColor = Color.fromARGB(255, 54, 93, 138);
const titleFontColor = Color.fromARGB(255, 94, 33, 98);

const bigBoxShadow = BoxShadow(
  blurRadius: 10,
  blurStyle: BlurStyle.outer,
  color: Colors.grey,
  // spreadRadius: 5,
  // offset: Offset(3, 3),
);

const smallBoxShadow = BoxShadow(
  blurRadius: 2,
  blurStyle: BlurStyle.outer,
  color: Colors.grey,
);

const myTextStyle = TextStyle(
    color: fontColor,
    fontFamily: 'calibri',
    fontSize: cardTitleSize,
    fontWeight: FontWeight.bold);

const double titelFontSize = 35;
const double cardTitleSize = 18;
const double cardSubTitleSize = 16;
const double card_mainAxisSpacing = 20;
const double card_radius_out = 42;
const double card_radius_in = 40;
