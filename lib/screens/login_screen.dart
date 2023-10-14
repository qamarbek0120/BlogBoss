import 'package:boss_blog/components/rounded_button.dart';
import 'package:boss_blog/screens/main_pages/home_screen.dart';
import 'package:boss_blog/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'components/registration_form.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:boss_blog/components/user.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> _login() async {
    final String apiUrl = 'https://api.bossblog.uz/api/v1/users/auth/signin';
    final response = await http.post(Uri.parse(apiUrl),
        body: json.encode(User(
            usernameOrEmail: usernameController.text,
            password: passwordController.text)),
        headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      // Login successful, handle the response accordingly
      Navigator.pushNamed(context, HomeScreen.id);
      print('Login successful');
    } else {
      // Login failed, handle the errors
      showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: Text('Login failed'),
              content: Text('Invalid username or password. Please, try again later'),
              actions: <Widget>[
                TextButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text('Ok')
                )
              ],
            );
          }
      );
      print('Login failed');
    }
  }
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
                            login_button(input: "Name", control: usernameController),
                            PasswordFieldButton(input: "Password", control: passwordController,),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20.0),
                              child: RoundedButton(
                                  colorr: kPrimaryColor,
                                  title: 'Log in',
                                  onPressed: () {
                                    _login();
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
                                          Navigator.pushNamed(context, RegistrationScreen.id);
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

