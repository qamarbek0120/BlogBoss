import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/registration_screen.dart';

class registration_form extends StatelessWidget {
  registration_form({required this.mainTitle, required this.reference});
  final String mainTitle;
  final String reference;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            mainTitle,
            style: kLoginTextStyle,),
        ),
        Text(
          reference,
          style: TextStyle(
              color: Colors.black45,
              fontSize: 18,
              fontWeight: FontWeight.w300
          ),
        )
      ],
    );
  }
}

class login_button extends StatelessWidget {
  login_button({required this.input});
  final String input;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: input,
            hintStyle: TextStyle(
                color: Colors.black26,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2, color: kSecondaryColor
                ),
                borderRadius: BorderRadius.circular(20)
            )
        ),
      ),
    );
  }
}
