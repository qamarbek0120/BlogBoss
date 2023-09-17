import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/components/status_items.dart';
import 'package:boss_blog/screens/components/essentials.dart';
import 'package:intl/intl.dart';
import 'package:boss_blog/screens/components/blogs.dart';
import 'home_screen.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

int _activePage = 0;
final List<Widget> _pages = [
  const PageOne(),
  const PageTwo(),
  const PageThree()
];
final controller = PageController(initialPage: 0);

class _ProfilePageState extends State<ProfilePage> {
  @override
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
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                      width: double.infinity,
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
      width: double.infinity,
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

