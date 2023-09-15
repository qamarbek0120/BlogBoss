import 'package:boss_blog/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:boss_blog/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  List<PageViewModel> getPages() {
    return [ PageViewModel(image: Padding(
      padding: EdgeInsets.only(top: 25.0),
      child: Image.asset('assets/onboarding_screen/1.jpg',width: 400,),
    ),
      title:'Qulay va ishonchli',
      body: 'Endi BossBlog ilovasi orqali hoxlagan joyingizdan turib ishonchli mualliflar qoldirgan hikoyalari va bloglari blan tanisha olasiz.',
      decoration: PageDecoration()
    ),PageViewModel(image: Padding(
      padding:  EdgeInsets.only(top: 25.0),
      child: Image.asset('assets/onboarding_screen/1.jpg'),
    ),
      title:'Qulay va ishonchli',
      body: 'Endi BossBlog ilovasi orqali hoxlagan joyingizdan turib ishonchli mualliflar qoldirgan hikoyalari va bloglari blan tanisha olasiz.',),
      PageViewModel(image: Padding(
        padding:  EdgeInsets.only(top: 25.0),
        child: Image.asset('assets/onboarding_screen/1.jpg'),
      ),
      title:'Qulay va ishonchli',
      body: 'Endi BossBlog ilovasi orqali hoxlagan joyingizdan turib ishonchli mualliflar qoldirgan hikoyalari va bloglari blan tanisha olasiz.',
    ),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Center(
      child: IntroductionScreen(done: Text('Done'),onDone: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));
      },pages: getPages(),globalBackgroundColor: Colors.white,showNextButton: false ,

      ),
    ),);
  }
}
