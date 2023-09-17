import 'package:boss_blog/screens/components/blogs.dart';
import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/components/blogs.dart';
import 'package:boss_blog/screens/main_pages/home_screen.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boss_blog/screens/main_pages/profile_screen.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            children: <Widget>[
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
            ],
          ),
        ),
      )

    );
  }
}
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: Text(
        'Three',style: TextStyle(color: Colors.white, fontSize: 40),
      ),
    );;
  }
}



class Essentials extends StatelessWidget {
  Essentials({required this.text, required this.onPressed});
  final String text;
  final void Function()? onPressed;
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Colors.black
          )
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: TextButton(
          onPressed: onPressed,
          child: Text(text, style: secondarystatusStyle.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Colors.grey.shade600
          )),
        ),
      ),
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
          children: <Widget>[
            TextButton(onPressed:(){},child: Icon(activePage==HomeScreen.id?BootstrapIcons.house_door_fill:BootstrapIcons.house_door, size: 30)),
            TextButton(onPressed:(){},child: Icon(activePage==HomeScreen.id?FontAwesomeIcons.magnifyingGlass:BootstrapIcons.search, size: 30)),
            TextButton(onPressed:(){},child: Icon(activePage==HomeScreen.id?BootstrapIcons.plus_square_fill:BootstrapIcons.plus_square, size: 30)),
            TextButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));}, child: Icon(activePage==HomeScreen.id?BootstrapIcons.person_fill:BootstrapIcons.person, size: 30))
          ],
        ),
      ),
    );
  }
}