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
                child: Image.asset('images/welcome_screen.png'),
              )
            ),
            const Padding(
              padding:  EdgeInsets.only(top: 40.0),
              child: Column(
                children: [
                  Text('Welcome to Boss Blog',
                  textAlign: TextAlign.center,
                  style: kTitleTextStyle,),
                  Padding(
                    padding:  EdgeInsets.all(15.0),
                    child: Text('Lorem ipsum doler lorem ipodum',
                      textAlign: TextAlign.center,
                      style: kParagraphTextStyle,),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            RoundedButton(
              colorr: kPrimaryColor,
              title: 'Log In',
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              style: kFilledButtonStyle
            ),
            const SizedBox(
              height: 25,
            ),
            RoundedButton(
                colorr: Colors.white,
                title: 'Sign Up',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                style: kOutlinedButtonStyle
                ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed:(){},
                    child:const Icon(
                      FontAwesomeIcons.google,
                      color: kSecondaryColor,
                      size: 30,
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child:const Icon(
                      FontAwesomeIcons.telegram,
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

