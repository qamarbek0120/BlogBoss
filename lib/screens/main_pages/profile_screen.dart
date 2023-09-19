import 'package:boss_blog/screens/main_pages/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/components/status_items.dart';
import 'package:boss_blog/screens/components/essentials.dart';
import 'package:intl/intl.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:boss_blog/screens/components/blogs.dart';
import 'create_screen.dart';
import 'home_screen.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

final List<Widget> _pages = [
  const PageOne(),
  const PageTwo(),
  const PageThree()
];
final controller = PageController(initialPage: 0);

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 3;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed:(){
                            Navigator.pop(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                          },
                          child: Icon(
                            FontAwesomeIcons.arrowLeft,
                            size: 20,
                          ),
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Icon(
                            FontAwesomeIcons.bars,
                            size: 20,
                          ),
                        ),
                      ],
                    )
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1
                          )
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(60),
                              image: DecorationImage(
                                  image: AssetImage('assets/blog_images/joxa.jpg'),
                                  fit: BoxFit.fill
                              ),
                            ),

                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Qamarbek Safarboyev',
                                style: mainPersonStyle,),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5),
                                      child: Text(
                                        '0 followers',
                                        style: followStyle,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5),
                                      child: Text(
                                        '4 following',
                                        style: followStyle,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StatusItems(
                            text: 'Share profile',
                            outline: Colors.black,
                            style: primarystatusStyle,
                            background: Colors.black,
                          ),
                          StatusItems(
                            text: 'Edit your profile',
                            outline: Colors.black,
                            style: secondarystatusStyle,
                            background: Colors.white,
                          ),

                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Essentials(
                            text: "Blogs",
                            onPressed: (){
                              controller.animateToPage(0, duration: Duration(milliseconds: 200,), curve: Curves.easeIn);
                            }
                          ),
                          Essentials(
                            text: "Replies",
                            onPressed: (){
                              controller.animateToPage(1, duration: Duration(milliseconds: 200,), curve: Curves.easeIn);
                            }
                          ),
                          Essentials(
                            text: "Bookmarks",
                            onPressed: (){
                              controller.animateToPage(2, duration: Duration(milliseconds: 200,), curve: Curves.easeIn);
                            }
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                color: Colors.grey.shade50
                            ),
                          ],
                      ),
                      child: Contents(),
                    )
                  ],
                ),
              ],
            ),
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
            onPressed: () {
              Navigator.push(context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return CreateScreen();
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
            icon: FontAwesomeIcons.folderPlus,
            text: 'Create',
            textStyle: TextStyle(fontSize: 20),
          ),
          GButton(
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

class Contents extends StatelessWidget {
  const Contents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        controller: controller,
        children: [
          PageOne(),
          PageTwo(),
          PageThree()
        ],
      ),
    );
  }
}

