import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/components/blogs.dart';
import 'package:boss_blog/screens/components/essentials.dart';
import 'package:boss_blog/screens/main_pages/profile_screen.dart';
import 'package:boss_blog/screens/main_pages/search_screen.dart';
import 'package:boss_blog/screens/main_pages/secondary_pages/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:boss_blog/screens/main_pages/create_screen.dart';
import 'package:boss_blog/screens/main_pages/components/category_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// String formattedDate = DateFormat.yMMMEd().format(DateTime.now());

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize the TabController
    _tabController = TabController(length: 15, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the TabController when the widget is removed
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 11,
        title: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
          child: Text(
            'Home',
            style: kTitleTextStyle,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 30,
                right: MediaQuery.of(context).size.height / 40),
            child: GestureDetector(
              child: Icon(FontAwesomeIcons.bell),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );},
            ),
          )
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        bottom: TabBar(
          isScrollable: true,
          physics: BouncingScrollPhysics(),
          controller: _tabController,
          automaticIndicatorColorAdjustment: true,
          labelColor: Colors.black,
          indicatorColor: kSecondaryColor,
          tabs: [
            Tab(text: '+'),
            Tab(text: 'Industry'),
            Tab(text: 'Comedy'),
            Tab(text: 'IT'),
            Tab(text: 'Science'),
            Tab(text: 'Business'),
            Tab(text: 'Presidency'),
            Tab(text: 'Rich People shit'),
            Tab(text: 'Billionaire shit'),
            Tab(text: 'Economy'),
            Tab(text: 'Finance'),
            Tab(text: 'Cyber Security'),
            Tab(text: 'Formality'),
            Tab(text: 'Cartoon'),
            Tab(text: 'LOL'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("Adding new category feature")),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
          Center(child: PageOne()),
        ],
      ),
      bottomNavigationBar: GNav(
        rippleColor: Colors.black12,
        tabBorderRadius: 20,
        hoverColor: Colors.black12,
        curve: Curves.bounceInOut,
        duration: Duration(seconds: 2),
        gap: 5,
        color: Colors.black12,
        activeColor: kSecondaryColor,
        iconSize: 20,
        haptic: true,
        style: GnavStyle.oldSchool,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        // navigation bar padding
        tabs: [
          GButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return HomeScreen();
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
            icon: FontAwesomeIcons.house,
            text: 'Home',
            textStyle: TextStyle(fontSize: 20),
          ),
          GButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return SearchScreen();
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
