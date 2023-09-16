import 'package:boss_blog/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'components/registration_form.dart';
import 'package:boss_blog/components/rounded_button.dart';
import 'package:boss_blog/constants.dart';

class RegistratioScreen extends StatelessWidget {
  const RegistratioScreen({super.key});

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
                  decoration: const BoxDecoration(
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
                        child: registration_form(mainTitle: "Signup", reference: "Create an account",),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            login_button(input: "Create E-mail"),
                            login_button(input: 'Create Password'),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                              child: RoundedButton(colorr: kPrimaryColor, title: 'Sign Up', onPressed: (){}, style: kFilledButtonStyle),
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    TextButton(
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
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
