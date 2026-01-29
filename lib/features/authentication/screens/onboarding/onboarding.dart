import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:health_app/features/authentication/screens/onboarding/widgets/onboarding_nextbtn.dart';
import 'package:health_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:health_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark ? MyColors.darkerBlue : MyColors.white,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                image: MyImages.onboardingScreen1,
                title: TheText.onBoardingTitle1,
                subTitle: TheText.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: MyImages.onboardingScreen2,
                title: TheText.onBoardingTitle2,
                subTitle: TheText.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: MyImages.onboardingScreen3,
                title: TheText.onBoardingTitle3,
                subTitle: TheText.onBoardingSubTitle3,
              ),
            ],
          ),

          ///skip
          OnboardingSkip(),

          /// next page
          OnboardingNextBtn()
        ],
      ),
    );
  }
}
