import 'dart:ffi';
import 'package:boss_blog/screens/login_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:boss_blog/screens/components/blogs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/components/blogs.dart';
import 'package:boss_blog/screens/main_pages/home_screen.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boss_blog/screens/main_pages/profile_screen.dart';
import 'package:boss_blog/screens/components/blogs.dart';
import 'package:boss_blog/screens/main_pages/create_screen.dart';
import 'package:boss_blog/screens/main_pages/search_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              children: <Widget>[
                Blogs(
                  formattedDate: formattedDate,
                  header: 'Welcome',
                  image: 'assets/blog_images/image.jpg',
                  category: 'Entertainment',
                ),
                Blogs(
                  formattedDate: formattedDate,
                  header: 'Welcome',
                  image: 'images/logo1.png',
                  category: 'Entertainment'
                ),
                Blogs(
                  formattedDate: formattedDate,
                  header: 'Welcome',
                  image: 'assets/blog_images/image.jpg',
                  category: 'Entertainment',
                ),
                Blogs(
                  formattedDate: formattedDate,
                  header: 'Welcome',
                  image: 'images/logo1.png',
                  category: 'Entertainment',
                ),
                Blogs(
                  formattedDate: formattedDate,
                  header: 'Welcome',
                  image: 'assets/blog_images/image.jpg',
                  category: 'Entertainment',
                ),
                Blogs(
                  formattedDate: formattedDate,
                  header: 'Welcome',
                  image: 'assets/blog_images/image.jpg',
                  category: 'Entertainment',
                ),
              ],
            ),
          ),
        )

      ),
    );
  }
}
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  RepliedBlogs(),
                  RepliedBlogs(),
                  RepliedBlogs()
                ],
              ),
            )),
      ],
    );
  }
}
class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Blogs(
              formattedDate: formattedDate,
              header: 'Welcome',
              image: 'assets/blog_images/image.jpg',
              category: 'Entertainment',
            ),
          ],
        ),
      ),
    );;
  }
}


class Essentials extends StatefulWidget {
  const Essentials({super.key});

  @override
  State<Essentials> createState() => _EssentialsState();

}
final List<Widget> tabs = [
  Tab(
    icon: Icon(
      FontAwesomeIcons.blog,
      color: kSecondaryColor,
      size: 20,
    ),
  ),
  Tab(
    icon: Icon(
      FontAwesomeIcons.reply,
      color: kSecondaryColor,
      size: 20,
    ),
  ),
  Tab(
    icon: Icon(
      FontAwesomeIcons.solidBookmark,
      color: kSecondaryColor,
      size: 20,
    ),
  )
];
final List<Widget> tabBarViews = [
  PageOne(),
  PageTwo(),
  PageThree()
];
int _selectedIndex = 0;

class _EssentialsState extends State<Essentials> {
  Future<void> _signOut() async {
    // Clear user authentication data from local storage
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('authToken'); // Assuming 'authToken' is the key used to store the user's token

    // Navigate to the login page or perform any other action after sign-out
    Navigator.pushReplacementNamed(context, '/login'); // Replace '/login' with your actual login route
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                onPressed: (){
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      backgroundColor: Colors.white,
                      barrierColor: Colors.black45,
                      context: context,
                      builder: (BuildContext context){
                        return SizedBox(
                          height: 600,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 150,
                                height: 4,
                                color: Colors.black45,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              //some settings
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Colors.white70,
                                ),
                                  onPressed: (){},
                                  child: Row(
                                    children: [
                                      Icon(FontAwesomeIcons.gear,color: kSecondaryColor,),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text('Settings',style: TextStyle(color: kSecondaryColor, fontSize: 20, fontWeight: FontWeight.bold),)
                                    ],
                                  )
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Colors.white70
                                  ),
                                  onPressed: (){},
                                  child: Row(
                                    children: [
                                      Icon(FontAwesomeIcons.businessTime,color: kSecondaryColor,),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text('Your Status',style: TextStyle(color: kSecondaryColor, fontSize: 20, fontWeight: FontWeight.bold),)
                                    ],
                                  )
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Colors.white70
                                  ),
                                  onPressed: (){},
                                  child: Row(
                                    children: [
                                      Icon(FontAwesomeIcons.user,color: kSecondaryColor,),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text('Account',style: TextStyle(color: kSecondaryColor, fontSize: 20, fontWeight: FontWeight.bold),)
                                    ],
                                  )
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Colors.white70
                                  ),
                                  onPressed: (){},
                                  child: Row(
                                    children: [
                                      Icon(FontAwesomeIcons.moon,color: kSecondaryColor,),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text('Theme',style: TextStyle(color: kSecondaryColor, fontSize: 20, fontWeight: FontWeight.bold),)
                                    ],
                                  )
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Colors.white70
                                  ),
                                  onPressed: (){},
                                  child: Row(
                                    children: [
                                      Icon(FontAwesomeIcons.circleInfo,color: kSecondaryColor,),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text('Help',style: TextStyle(color: kSecondaryColor, fontSize: 20, fontWeight: FontWeight.bold),)
                                    ],
                                  )
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  padding: EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  )
                                ),
                                  onPressed: (){
                                  _signOut();
                                  Navigator.pushNamed(context, LoginScreen.id);
                                  },
                                  child: Text(
                                    'Sign Out',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      )
                                  ),)
                            ],
                          ),
                        );
                      }
                  );
                },
                icon: Icon(FontAwesomeIcons.bars,color: kSecondaryColor)
            ),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Text('364',style: secondarystatusStyle,),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Following',style: secondarystatusStyle,)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade400,
                        image: DecorationImage(
                            image: AssetImage('assets/blog_images/joxa.jpg')
                        ),
                        border: Border.all(
                            color: Colors.grey.shade200,
                            width: 5
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Text('200',style: secondarystatusStyle,),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Followers', style: secondarystatusStyle,)
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Jaxongir Ruzmatov', style: primarystatusStyle,),
                  Text('|', style: primarystatusStyle,),
                  Text('Developer', style: primarystatusStyle,)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text('UI Designer & Flutter Developer', style: primarystatusStyle.copyWith(color: Colors.grey),),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text('Share profile', style: secondarystatusStyle,),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text('Edit profile', style: secondarystatusStyle.copyWith(color: Colors.white),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TabBar(
                  tabs: tabs
              ),
              Expanded(child: TabBarView(children: tabBarViews))
            ],
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
        )
    );;
  }
}


// class BottomNavBar extends StatelessWidget {
//   final String activePage;
//   const BottomNavBar({
//     super.key,required this.activePage
//   });
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 20),
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           border: Border(
//             top: BorderSide(
//               width: 5,
//               color: kBackgroundColor,
//             ),
//           ),
//           color: Colors.white,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             TextButton(onPressed:(){},child: Icon(activePage==HomeScreen.id?BootstrapIcons.house_door_fill:BootstrapIcons.house_door, size: 30)),
//             TextButton(onPressed:(){},child: Icon(activePage==HomeScreen.id?FontAwesomeIcons.magnifyingGlass:BootstrapIcons.search, size: 30)),
//             TextButton(onPressed:(){},child: Icon(activePage==HomeScreen.id?BootstrapIcons.plus_square_fill:BootstrapIcons.plus_square, size: 30)),
//             TextButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));}, child: Icon(activePage==HomeScreen.id?BootstrapIcons.person_fill:BootstrapIcons.person, size: 30))
//           ],
//         ),
//       ),
//     );
//   }
// }

