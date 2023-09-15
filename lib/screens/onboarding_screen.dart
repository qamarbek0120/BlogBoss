import 'package:boss_blog/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: PageView.builder(
          itemBuilder: (__, i) {},
        ),
      ),
    );
  }
}
