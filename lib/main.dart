import 'package:boss_blog/screens/login_screen.dart';
import 'package:boss_blog/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

void main() {
  runApp(const BossBlog());
}

class BossBlog extends StatelessWidget {
  const BossBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(fontSize: 50),
          bodyMedium: GoogleFonts.josefinSans(fontSize: 35),
          displaySmall: GoogleFonts.libreBaskerville(fontSize: 14),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home:  OnboardingScreen(),
    );
  }
}
