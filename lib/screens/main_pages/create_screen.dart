import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/main_pages/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rive/rive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boss_blog/screens/main_pages/profile_screen.dart';
import 'package:boss_blog/screens/main_pages/home_screen.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create',
          style: kTitleTextStyle,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Center(
        child: Container(
          child: Transform.scale(
            scale: 0.5,
            child: RiveAnimation.asset(
              'assets/rive/2359-4685-spinning-gears.riv',
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Text(
            'The Page is under maintenance, for full experience of app you can visit www.bossblog.uz',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      bottomNavigationBar: GNav(
        tabBorderRadius: 20,
        curve: Curves.easeInOutCubicEmphasized,
        duration: Duration(milliseconds: 800),
        gap: 5,
        color: Colors.grey,
        activeColor: Colors.black,
        iconSize: 20,
        haptic: true,
        style: GnavStyle.oldSchool,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        // navigation bar padding
        tabs: [
          GButton(
            onPressed: () {
              Navigator.push(context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return HomeScreen();
                  },
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 0),
                ),);
            },
            icon: FontAwesomeIcons.house,
            text: 'Home',
            textStyle: TextStyle(fontSize: 20),
          ),
          GButton(
            onPressed: () {
              Navigator.push(context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return SearchScreen();
                  },
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 0),
                ),);
            },
            icon: FontAwesomeIcons.search,
            text: 'Search',
            textStyle: TextStyle(fontSize: 20),
          ),
          GButton(
            icon: FontAwesomeIcons.folderPlus,
            text: 'Create',
            textStyle: TextStyle(fontSize: 20),
          ),
          GButton(
            onPressed: () {
              Navigator.push(context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return ProfilePage();
                  },
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 0),
                ),);
            },
            icon: FontAwesomeIcons.user,
            text: 'Profile',
            textStyle: TextStyle(fontSize: 20),
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
