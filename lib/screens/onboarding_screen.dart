import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:boss_blog/components/rounded_button.dart';
import 'components/list_page.dart';

class OnboardingScreen extends StatefulWidget {
  static String id = 'onboarding_screen';
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: 3,
                  itemBuilder: (__, i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 35.0),
                      child: Column(
                        children: [
                          Image.asset(content[i].image),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 20.0),
                                  child: Text(
                                    content[i].title,
                                    style: kTitleTextStyle,
                                  ),
                                ),
                                Text(
                                  content[i].description,
                                  style: kParagraphTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  content.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: buildDot(index, context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 20),
                child: Container(
                  child: RoundedButton(
                    colorr: kPrimaryColor,
                    title: currentIndex == content.length - 1
                        ? 'Get started'
                        : 'Next',
                    onPressed: () {
                      if (currentIndex == content.length - 1) {
                        Navigator.pushNamed(context, WelcomeScreen.id);
                      }
                      _controller.nextPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.bounceIn);
                    },
                    style: kFilledButtonStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index, BuildContext context) {
    return AnimatedContainer(
      width: currentIndex == index ? 35 : 10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index? kPrimaryColor:Colors.grey,
      ), duration: Duration(milliseconds: 200),
    );
  }
}
