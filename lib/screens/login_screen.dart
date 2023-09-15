import 'package:boss_blog/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                    fit: BoxFit.cover
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Container(
                    height: 300,
                    child: Image.asset('images/logo1.png',
                    width: 150,),
                  ),
                Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80)
                    ),
                    color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: Text('Login',style: kLoginTextStyle,),
                            ),
                            Text(
                              'Sign in to continue',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.w300
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            login_button(input: "Name"),
                            login_button(input: 'Password'),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                              child: RoundedButton(colorr: kPrimaryColor, title: 'Log in', onPressed: (){}, style: kFilledButtonStyle),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  'Don`t have an account?',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextButton(
                                    onPressed: (){},
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                      ),
                                    )
                                )
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
          enabledBorder: OutlineInputBorder(
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

