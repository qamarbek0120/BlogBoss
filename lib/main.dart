import 'package:boss_blog/screens/login_screen.dart';
import 'package:boss_blog/screens/main_pages/create_screen.dart';
import 'package:boss_blog/screens/main_pages/home_screen.dart';
import 'package:boss_blog/screens/main_pages/profile_screen.dart';
import 'package:boss_blog/screens/onboarding_screen.dart';
import 'package:boss_blog/screens/registration_screen.dart';
import 'package:boss_blog/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
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
      initialRoute: OnboardingScreen.onboarding,
      routes: {
        OnboardingScreen.onboarding: (context)=> OnboardingScreen(),
        WelcomeScreen.welcome: (context)=> WelcomeScreen(),
        LoginScreen.login: (context)=> LoginScreen(),
        RegistrationScreen.registration: (context)=> RegistrationScreen(),
        HomeScreen.home: (context)=> HomeScreen(),
        SearchScreen.search: (context)=> SearchScreen(),
        CreateScreen.create: (context)=> CreateScreen(),
        ProfilePage.profile: (context)=> ProfilePage()

      },
    );
  }
}
