import 'package:boss_blog/screens/login_screen.dart';
import 'screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(BossBlog());
}

class BossBlog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      initialRoute: 'onboarding_screen',
      // routes:{
      //   OnboardingScreen.onboard: (context) => OnboardingScreen(),
      //   'welcome_screen': (context) => WelcomeScreen(),
      //   'login_screen': (context) => LoginScreen(),
      // },
    );
  }
}
