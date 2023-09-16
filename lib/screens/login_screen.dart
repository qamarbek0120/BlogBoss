import 'package:boss_blog/components/rounded_button.dart';
import 'package:boss_blog/screens/main_pages/home_screen.dart';
import 'package:boss_blog/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'components/registration_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 300,
                  child: Image.asset(
                    'images/logo1.png',
                    width: 150,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 500,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80),
                          topRight: Radius.circular(80)),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: registration_form(
                          mainTitle: "Login",
                          reference: "Sign in to continue",
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            login_button(input: "Name"),
                            login_button(input: 'Password'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20.0),
                              child: RoundedButton(
                                  colorr: kPrimaryColor,
                                  title: 'Log in',
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeScreen()));
                                  },
                                  style: kFilledButtonStyle),
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    const Text(
                                      'Don`t have an account?',
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      RegistratioScreen()));
                                        },
                                        child: const Text(
                                          'Sign up',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ))
                                  ],
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ))
                              ],
                            )
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
    );
  }
}
