import 'package:boss_blog/screens/main_pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../constants.dart';
import 'components/category_tab.dart';
import 'create_screen.dart';
import 'home_screen.dart';
import 'package:intl/intl.dart';



class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  static String id = "search_screen";

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}
String Date = DateFormat.yMMMEd().format(DateTime.now());


class _SearchScreenState extends State<SearchScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 1;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 30,
                        bottom: 10.0,
                        right: MediaQuery.of(context).size.height / 3.5),
                    child: Text(
                      'Explore',
                      style: kTitleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height / 80,
                        horizontal: MediaQuery.of(context).size.height / 80),
                    child: TextField(
                      cursorColor: Colors.black26,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.black12,
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        hintText: 'Search in BossBlog',
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                            gapPadding: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 80,
                        left: MediaQuery.of(context).size.height / 80),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Category(
                            category: 'For you',
                          ),
                          Category(
                            category: 'Industry',
                          ),
                          Category(
                            category: 'News',
                          ),
                          Category(
                            category: 'Comedy',
                          ),
                          Category(
                            category: ' Business',
                          ),
                          Category(
                            category: 'IT',
                          ),
                          Category(
                            category: 'Science',
                          ),
                          Category(
                            category: 'Football',
                          ),
                          Category(
                            category: 'Sports',
                          ),
                          Category(
                            category: 'Politics',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 80,
                    left: MediaQuery.of(context).size.height / 30),
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.arrowTrendUp),
                    SizedBox(width: 10),
                    Text(
                      'Trending on BossBlog',
                      style: TextStyle(
                        fontFamily: 'Playfair',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              TrendingBlog(order: '01',),
              TrendingBlog(order: '02',),
              TrendingBlog(order: '03',),
              TrendingBlog(order: '04',),
              TrendingBlog(order: '05',),
              TrendingBlog(order: '06',),
              TrendingBlog(order: '07',),
              TrendingBlog(order: '08',),
              TrendingBlog(order: '09',),
            ],
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

class TrendingBlog extends StatelessWidget {
  final String order;

  const TrendingBlog({
    super.key,required this.order
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height / 2.5,
      height: MediaQuery.of(context).size.height / 7,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 50,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              order,
              style: kTitleTextStyle.copyWith(
                  color: Colors.black12, fontSize: 55),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height / 50,
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.height / 3.3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: CircleAvatar(
                          child: Image.asset(
                              'assets/blog_images/joxa.jpg'),
                          radius:
                              MediaQuery.of(context).size.height / 80,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 150,
                      ),
                      Text(
                        'Jakhongir Ruzmatov',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height / 60,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),SizedBox(height: MediaQuery.of(context).size.height / 80,),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Shockin news, This app is gonna be awesome claims Abbas Axmedov and says it has bright future',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                    ),
                  ),Text(Date,style: TextStyle(fontSize: 14,)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
