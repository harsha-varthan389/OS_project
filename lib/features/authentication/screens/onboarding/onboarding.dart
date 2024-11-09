import 'package:e_commerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/wigets/onboarding_dot_navigation.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/wigets/onboarding_next_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/wigets/onboarding_pages.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/wigets/onbording_skip.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    //  we can access this instance from anywhere within your application using Get.find<MyController>().

    final controller = Get.put(OnboardingController());
    return  Scaffold(
      body: Stack(
        children: [
          //SCROLLABLE PAGES :
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: TImages.onBoardingImage1,title: TTexts.onBoardingTitle1,subtitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(image: TImages.onBoardingImage2,title: TTexts.onBoardingTitle2,subtitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(image: TImages.onBoardingImage3,title: TTexts.onBoardingTitle3,subtitle: TTexts.onBoardingSubTitle3)
            ],
          ),
          
          //Positioned used to position a child widget within a Stack
          const OnBoardingSkip(),
          //smooth papge indicator
          const OnBoardingDotNavigation(),
          //circular button
          const OnBoardingNextButton(),
        ],
      )
    );
  }
}




