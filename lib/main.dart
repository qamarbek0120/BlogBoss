import 'package:boss_blog/screens/login_screen.dart';
import 'package:boss_blog/screens/main_pages/create_screen.dart';
import 'package:boss_blog/screens/main_pages/home_screen.dart';
import 'package:boss_blog/screens/main_pages/profile_screen.dart';
import 'package:boss_blog/screens/onboarding_screen.dart';
import 'package:boss_blog/screens/registration_screen.dart';
import 'package:boss_blog/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/main_pages/profile_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/main_pages/search_screen.dart';

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
          titleLarge: GoogleFonts.poppins(fontSize: 40),
          bodyMedium: GoogleFonts.josefinSans(fontSize: 35),
          displaySmall: GoogleFonts.libreBaskerville(fontSize: 14),
        ),
      ),
      debugShowCheckedModeBanner: true,
      initialRoute: OnboardingScreen.id,
      routes: {
        OnboardingScreen.id: (context)=> OnboardingScreen(),
        WelcomeScreen.id: (context)=> WelcomeScreen(),
        LoginScreen.id: (context)=> LoginScreen(),
        RegistrationScreen.id: (context)=> RegistrationScreen(),
        HomeScreen.id: (context)=> HomeScreen(),
        SearchScreen.id: (context)=> SearchScreen(),
        CreateScreen.id: (context)=> CreateScreen(),
        ProfilePage.id: (context)=> ProfilePage()

      },
    );
  }
}
