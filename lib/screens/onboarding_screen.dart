import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [ PageViewModel(image: Image.asset('assets/onboarding_screen/1.png',width: 400,),
      title:'Qulay va ishonchli',
      body: 'Endi BossBlog ilovasi orqali hoxlagan joyingizdan turib ishonchli mualliflar qoldirgan hikoyalari va bloglari blan tanisha olasiz.',
      footer: Text('bossblog'
      ),decoration: PageDecoration()
    ),PageViewModel(image: Image.asset('assets/onboarding_screen/6263767_3236267.jpg'),
      title:'Qulay va ishonchli',
      body: 'Endi BossBlog ilovasi orqali hoxlagan joyingizdan turib ishonchli mualliflar qoldirgan hikoyalari va bloglari blan tanisha olasiz.',
      footer: Text('bossblog'
      ),
    ),PageViewModel(image: Image.asset('assets/onboarding_screen/6263767_3236267.jpg'),
      title:'Qulay va ishonchli',
      body: 'Endi BossBlog ilovasi orqali hoxlagan joyingizdan turib ishonchli mualliflar qoldirgan hikoyalari va bloglari blan tanisha olasiz.',
      footer: Text('bossblog'
      ),
    ),
    ];
  }
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Center(
      child: IntroductionScreen(done: Text('Done'),onDone: (){},pages: getPages(),globalBackgroundColor: Colors.white,showNextButton: false ,

      ),
    ),);
  }
}
