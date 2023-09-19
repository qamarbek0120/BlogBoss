import 'package:boss_blog/screens/login_screen.dart';
import 'package:boss_blog/screens/main_pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'components/registration_form.dart';
import 'package:boss_blog/components/rounded_button.dart';
import 'package:boss_blog/constants.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});
  static String registration = 'registration_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: registration_form(mainTitle: "Signup", reference: "Create an account",),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            login_button(input: "Enter E-mail"),
                            login_button(input: 'Enter your First name'),
                            login_button(input: 'Enter your Last name'),
                            login_button(input: 'Create username'),
                            login_button(input: 'Create Password'),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                                  child: RoundedButton(colorr: kPrimaryColor, title: 'Sign Up', onPressed: (){Navigator.pushNamed(context, HomeScreen.home);}, style: kFilledButtonStyle),
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        TextButton(
                                            onPressed: (){
                                              Navigator.pushNamed(context, LoginScreen.login);
                                            },
                                            child: const Text(
                                              'Already have an account?',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );;
  }
}
