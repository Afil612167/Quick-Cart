import 'package:e_store/view/intro_screen/widget/second_onboarding_screen.dart';
import 'package:e_store/view/intro_screen/widget/third_onboarding.dart';
import 'package:e_store/view/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/intro_screen/widget/first_onboarding_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  // 1. Define a `GlobalKey` as part of the parent widget's state
  final _introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return IntroductionScreen(
      // 2. Pass that key to the `IntroductionScreen` `key` param
      key: _introKey,
      pages: [
        PageViewModel(
          title: '',
          bodyWidget: FirstOnBoardingScreen(),
        ),
        PageViewModel(title: '', bodyWidget: SecondOnBoardingScreen()),
        PageViewModel(title: '', bodyWidget: ThirdOnBoardingScreen()),
      ],
      skip: skipButton,
      next: nextButton,
      showNextButton: true,
      showDoneButton: true,
      showSkipButton: true,

      done: IconButton(
        onPressed: () {
          Get.off(WelcomeScreen());
        },
        icon: Icon(
          Icons.arrow_circle_right_outlined,
          color: mainPink,
          size: height / 24,
        ),
      ),
      globalBackgroundColor: secondaryWhite,
      dotsDecorator: DotsDecorator(
        activeColor: mainPink,
      ),
      onDone: () {},
    );
  }
}

//***************************- NextButton -****************************/
Widget nextButton = const Icon(
  Icons.arrow_circle_right_outlined,
  color: mainPink,
  size: 30,
);
//*******************- Skip Button -***************************/
Widget skipButton = const Text(
  'Skip',
  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: mainGrey),
);
