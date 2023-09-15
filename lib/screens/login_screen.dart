import 'package:flutter/material.dart';
import 'onboarding_screen.dart';
import 'package:boss_blog/constants.dart';

class LoginScreen extends StatelessWidget {
  static String login = 'login_screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Enter you username'
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Enter you password'
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

