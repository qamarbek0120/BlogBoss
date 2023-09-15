import 'package:boss_blog/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boss_blog/components/rounded_button.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 65.0),
                child: Image.network('https://www.pngall.com/wp-content/uploads/12/Illustration-PNG.png'),
              )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                children: [
                  Text('Welcome to Boss Blog',
                  textAlign: TextAlign.center,
                  style: kWelcomeFontStyle,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Lorem ipsum doler lorem ipodum',
                      textAlign: TextAlign.center,
                      style: kWelcomeFontParagraph,),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            RoundedButton(
              colorr: kPirmaryColor,
              title: 'Log In',
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              style: kLoginStyle
            ),
            SizedBox(
              height: 25,
            ),
            RoundedButton(
                colorr: Colors.white,
                title: 'Sign Up',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                style: kRegisterStyle
                ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed:(){},
                    child: Icon(
                      FontAwesomeIcons.google,
                      color: kSecondaryColor,
                      size: 30,
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      size: 30,
                      color: kSecondaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

