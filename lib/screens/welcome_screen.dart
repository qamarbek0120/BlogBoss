import 'package:boss_blog/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';



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
              height: 100,
            ),
            RoundedButton(
              colorr: Color(0xFF18336f),
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
                colorr: Color(0xFFefefef),
                title: 'Sign Up',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                style: kRegisterStyle
                )
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.colorr, required this.title, required this.onPressed, required this.style});
  final Color colorr;
  final String title;
  final void Function()? onPressed;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MaterialButton(onPressed: onPressed,
        minWidth: double.infinity,
        height: 50,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: ,
            color: Color(0xFF18336f)
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: colorr,
        child: Text(
          title,
          style: style,
        ),

      ),
    );
  }
}
