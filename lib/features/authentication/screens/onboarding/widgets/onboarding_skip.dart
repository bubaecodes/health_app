import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/sizes.dart';
import 'package:health_app/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Positioned(
      top: MyDeviceUtils.getAppBarHeight(),
      right: MySizes.md,
      child: TextButton(
        onPressed: ()=> OnboardingController.instance.skipPage(),
        style: TextButton.styleFrom(
          backgroundColor: isDark ? Colors.white : MyColors.darkBlue,
          // padding: EdgeInsets.symmetric(
          //   horizontal: MySizes.md,
          //   vertical: MySizes.xs,
          // ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(MySizes.md),
          ),
        ),
        child: MyText(
          title: 'Skip',
          fontVariation: FontVariation.weight(400),
          fontSize: 15,
          color: isDark ? MyColors.darkerBlue : MyColors.white,
        )
      ),
    );
  }
}
