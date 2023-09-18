import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/components/status_items.dart';
import 'package:boss_blog/screens/components/essentials.dart';
import 'package:intl/intl.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:boss_blog/screens/components/blogs.dart';
import 'home_screen.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static String profile = 'profile_screen';
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
    return Essentials();
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

