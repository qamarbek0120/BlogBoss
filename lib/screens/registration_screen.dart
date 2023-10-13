import 'package:boss_blog/screens/login_screen.dart';
import 'package:boss_blog/screens/main_pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'components/registration_form.dart';
import 'package:boss_blog/components/rounded_button.dart';
import 'package:boss_blog/constants.dart';
// import 'package:boss_blog/components/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:boss_blog/components/new_user.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  static String id = 'registration_screen';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController newUsernameController = TextEditingController();
  Future<void> _signup() async {
    final String apiUrl = 'https://api.bossblog.uz/api/v1/users/auth/signup';
    final response = await http.post(Uri.parse(apiUrl),
        body: json.encode(User(
            fullName: fullNameController.text,
            email: emailController.text,
            password: passwordController.text,
            confirmPassword: confirmPasswordController.text,
            newUsername: newUsernameController.text)),
        headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      // Signup successful, handle the response accordingly
      Navigator.pushNamed(context, LoginScreen.id);
      print('Signup successful');
      Navigator.pushNamed(context, HomeScreen.id);
    } else {
      // Signup failed, handle the error
      showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: Text('Registration failed'),
              content: Text('Some error occured. Please, try again'),
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
      print('Signup failed');
    }
  }
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
                            login_button(input: "Enter E-mail", control: emailController,),
                            login_button(input: 'Enter your full name', control: fullNameController,),
                            login_button(input: 'Create a password', control: passwordController,),
                            login_button(input: 'Confirm password', control: confirmPasswordController,),
                            login_button(input: 'new Username', control: newUsernameController,),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                                  child: RoundedButton(colorr: kPrimaryColor, title: 'Sign Up', onPressed: (){_signup();}, style: kFilledButtonStyle),
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        TextButton(
                                            onPressed: (){
                                              _signup();
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
    );
  }
}

