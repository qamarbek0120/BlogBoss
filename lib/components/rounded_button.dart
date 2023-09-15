import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
class RoundedButton extends StatelessWidget {
  RoundedButton({required this.colorr, required this.title, required this.onPressed, required this.style});
  final Color colorr;
  final String title;
  final void Function()? onPressed;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MaterialButton(onPressed: onPressed,
        minWidth: double.infinity,
        height: 50,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2,
              color: kPirmaryColor
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: colorr,
        child: Text(
          title,
          style: style,
        ),

      ),
    );
  }
}
