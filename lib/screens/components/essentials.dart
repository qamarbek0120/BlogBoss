import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
class Essentials extends StatelessWidget {
  Essentials({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: Text(text, style: secondarystatusStyle.copyWith(
            fontSize: 17,
            fontWeight: FontWeight.normal,
            color: Colors.grey.shade600
        )),
      ),
    );
  }
}