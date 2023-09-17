import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/components/blogs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// String formattedDate = DateFormat.yMMMEd().format(DateTime.now());

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Blogs(
                    formattedDate: formattedDate,
                    header: 'Shockin News',
                    image: 'assets/blog_images/joxa.jpg',
                    category: "Entertainment",
                ),
                Blogs(
                    formattedDate: formattedDate,
                    header: 'Shockin News',
                    image: 'assets/blog_images/joxa.jpg',
                    category: "Entertainment",
                ),
                Blogs(
                    formattedDate: formattedDate,
                    header: 'Shockin News',
                    image: 'assets/blog_images/joxa.jpg',),
                Blogs(
                    formattedDate: formattedDate,
                    header: 'Shockin News',
                    image: 'assets/blog_images/joxa.jpg',),
                Blogs(
                    formattedDate: formattedDate,
                    header: 'Shockin News',
                    image: 'assets/blog_images/joxa.jpg'),
                Blogs(
                    formattedDate: formattedDate,
                    header: 'Shockin News',
                    image: 'assets/blog_images/joxa.jpg'),
                Blogs(
                    formattedDate: formattedDate,
                    header: 'Shockin News',
                    image: 'assets/blog_images/joxa.jpg'),
                Blogs(
                    formattedDate: formattedDate,
                    header: 'Shockin News',
                    image: 'assets/blog_images/joxa.jpg'),
                Blogs(
                    formattedDate: formattedDate,
                    header: 'Shockin News',
                    image: 'assets/blog_images/joxa.jpg'),
              ],
            ),
          ),
          Container(height: 98,padding: EdgeInsets.only(top: 20,bottom: 0,right: 10,left: 10),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Home',
                      style: kTitleTextStyle,
                    ),
                    Icon(BootstrapIcons.bell),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      CategoryButton(category: '+'),
                      CategoryButton(
                        category: 'Industry',
                      ),
                      CategoryButton(
                        category: 'Industry',
                      ),
                      CategoryButton(
                        category: 'Industry',
                      ),
                      CategoryButton(
                        category: 'Industry',
                      ),
                      CategoryButton(
                        category: 'Fashion',
                      ),
                      CategoryButton(
                        category: 'Fashion',
                      ),
                      CategoryButton(
                        category: 'Fashion',
                      ),
                      CategoryButton(
                        category: 'Fashion',
                      ),
                      CategoryButton(
                        category: 'News',
                      ),
                      CategoryButton(
                        category: 'News',
                      ),
                      CategoryButton(
                        category: 'News',
                      ),
                      CategoryButton(
                        category: 'News',
                      ),
                      CategoryButton(
                        category: 'News',
                      ),
                      CategoryButton(
                        category: 'News',
                      ),
                      CategoryButton(
                        category: 'News',
                      ),
                      CategoryButton(
                        category: 'News',
                      ),
                      CategoryButton(
                        category: 'News',
                      ),
                      CategoryButton(
                        category: 'Blogs',
                      ),
                      CategoryButton(
                        category: 'Blogs',
                      ),
                      CategoryButton(
                        category: 'Blogs',
                      ),
                      CategoryButton(
                        category: 'POV',
                      ),
                      CategoryButton(
                        category: 'Government',
                      ),
                      CategoryButton(
                        category: 'Government',
                      ),
                      CategoryButton(
                        category: 'Government',
                      ),
                      CategoryButton(
                        category: 'Politics',
                      ),
                      CategoryButton(
                        category: 'Politics',
                      ),
                      CategoryButton(
                        category: 'Politics',
                      ),
                      CategoryButton(
                        category: 'Politics',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const GNav(
        rippleColor: Colors.white70,
        tabBorderRadius: 15,
        curve: Curves.bounceIn,
        // tab animation curves
        duration: Duration(milliseconds: 800),
        // tab animation duration
        gap: 5,
        // the tab button gap between icon and text
        color: Colors.grey,
        // unselected icon color
        activeColor: Colors.black,
        // selected icon and text color
        iconSize: 25,
        // tab button icon size
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        // navigation bar padding
        tabs: [
          GButton(
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
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;

  const CategoryButton({required this.category});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:
          ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
      onPressed: () {},
      child: Text(
        category,
        style: kParagraphTextStyle.copyWith(fontSize: 16),
      ),
    );
  }
}
