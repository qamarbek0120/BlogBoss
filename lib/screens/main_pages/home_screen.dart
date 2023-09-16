import 'dart:ffi';

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/main.dart';
import 'package:boss_blog/screens/components/list_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/category_button.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String id = 'HomeScreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 60, right: 20, left: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Home',
                  style: kTitleTextStyle,
                ),
                Icon(BootstrapIcons.bell)
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '+',
                      style: kParagraphTextStyle.copyWith(fontSize: 16),
                    ),
                    style: ButtonStyle(),
                  ),
                  decoration: BoxDecoration(
                    border: Border(),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'For you',
                    style: kParagraphTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Design',
                    style: kParagraphTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Fashion',
                    style: kParagraphTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'IT',
                    style: kParagraphTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Industry',
                    style: kParagraphTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 3,
            color: Colors.black26,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(activePage: 'HomeScreen',),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final String activePage;
  const BottomNavBar({
    super.key,required this.activePage
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 5,
              color: kBackgroundColor,
            ),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(activePage==HomeScreen.id?BootstrapIcons.house_door_fill:BootstrapIcons.house_door, size: 30),
            Icon(activePage==HomeScreen.id?FontAwesomeIcons.magnifyingGlass:BootstrapIcons.search, size: 30),
            Icon(activePage==HomeScreen.id?BootstrapIcons.plus_square_fill:BootstrapIcons.plus_square, size: 30),
            Icon(activePage==HomeScreen.id?BootstrapIcons.person_fill:BootstrapIcons.person, size: 30)
          ],
        ),
      ),
    );
  }
}
