import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w600
);
const secondarystatusStyle = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w600
);
const kPrimaryColor = Color(0xff4f85f6);
const kSecondaryColor = Color(0xff18336f);
const kBackgroundColor = Color(0xffefefef);
String formattedDate = DateFormat.yMMMEd().format(DateTime.now());