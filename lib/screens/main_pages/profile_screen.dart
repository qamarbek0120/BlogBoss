import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/components/status_items.dart';
import 'package:boss_blog/screens/components/essentials.dart';
import 'package:intl/intl.dart';
import 'package:boss_blog/screens/components/blogs.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
String formattedDate = DateFormat.yMMMEd().format(DateTime.now());

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        FontAwesomeIcons.bars,
                        size: 25,
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
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(
                                image: AssetImage('images/background.png'),
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
                      mainAxisAlignment: MainAxisAlignment.center,
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
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Colors.grey.shade300
                            )
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Essentials(
                          text: "Blogs",
                        ),
                        Essentials(
                          text: "Replies",
                        ),
                        Essentials(
                          text: "Bookmarks",
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.shade100
                              ),
                            ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SingleChildScrollView(scrollDirection: Axis.vertical,
                            child: Container(
                              child: Column(
                                children: [
                                  Blogs(
                                    formattedDate: formattedDate,
                                    header: 'Main Header',
                                    image: 'images/logo1.png',
                                  ),
                                  Blogs(
                                    formattedDate: formattedDate,
                                    header: 'Main Header',
                                    image: 'images/logo1.png',
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}