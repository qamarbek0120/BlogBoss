import 'package:boss_blog/screens/main_pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'create_screen.dart';
import 'home_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static String id = "search_screen";

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 1;
    return Scaffold(
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
            icon: FontAwesomeIcons.search,
            text: 'Search',
            textStyle: TextStyle(fontSize: 20),
          ),
          GButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return CreateScreen();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 0),
                ),
              );
            },
            icon: FontAwesomeIcons.folderPlus,
            text: 'Create',
            textStyle: TextStyle(fontSize: 20),
          ),
          GButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return ProfilePage();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 0),
                ),
              );
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
