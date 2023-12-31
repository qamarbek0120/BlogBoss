import 'dart:ui';
import 'package:boss_blog/screens/main_pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'screens/components/essentials.dart';

const kTitleTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 30.0,
  fontWeight: FontWeight.w600,
);
const kParagraphTextStyle = TextStyle(
  color: Colors.black54,
  fontWeight: FontWeight.w300,
  fontSize: 20.0,
);
const kOutlinedButtonStyle = TextStyle(
  color: kPrimaryColor,
  fontSize: 20.0,
  fontWeight: FontWeight.w500
);
const kFilledButtonStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w500
);
const kLoginTextStyle = TextStyle(
  color: kSecondaryColor,
  fontSize: 60,
  fontWeight: FontWeight.bold
);
const mainPersonStyle = TextStyle(
  color: Colors.black,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);
const followStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.normal,
  fontSize: 15
);
const primarystatusStyle = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w600
);
const secondarystatusStyle = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w600
);
const mainFontsize = TextStyle(
  color: kSecondaryColor,
  fontSize: 25,
  fontWeight: FontWeight.bold

);
const likeButtonStyle = TextStyle(
  color: Colors.grey,
  fontSize: 18,
  fontWeight: FontWeight.w400
);
Color essentialColor = Colors.grey.shade300;
const kPrimaryColor = Color(0xff4f85f6);
const kSecondaryColor = Color(0xff18336f);
const kBackgroundColor = Color(0xffefefef);
String formattedDate = DateFormat.yMMMEd().format(DateTime.now());
