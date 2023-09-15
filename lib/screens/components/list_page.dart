

class OnboardingFillings {
  String image;
  String title;
  String description;

  OnboardingFillings(
      {required this.image, required this.title, required this.description});
}

List<OnboardingFillings> content = [
  OnboardingFillings(image: 'assets/onboarding_screen/1.png',
      title: 'Safe and Secure',
      description: 'lorem ipsum ipodum doler lorem ipsum ipodum doler lorem ipsuasdfa dsafasd  fasd faipodum doler'),
  OnboardingFillings(image: 'assets/onboarding_screen/2.png',
      title: 'World of Expressions',
      description: 'lorem ipsum ipodum doler lorem ipsumadnfasdf adsfadsf adsfasdfadf ipodum doler'),
  OnboardingFillings(image: 'assets/onboarding_screen/3.png',
      title: 'Upload Memories',
      description: 'lorem ipsum ipsadfsad asdf sdfasd asdfadsfasdfas dfasdfas safasff sfafm ipsum ipodum doler lorem ipsum ipodum doler'),
];