import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/sizes.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.image, required this.title, required this.subTitle});

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: screenWidth * 0.1,
        vertical: screenHeight * 0.2,
      ),
      child: Center(
        child: Column(
          children: [
            MyText(
              title: title,
              fontVariation: FontVariation.weight(600),
              fontSize: 24,
              color: isDark ? MyColors.white : MyColors.darkerBlue,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MySizes.xl + 10),
            // Image(
            //   width: screenWidth * 0.6,
            //   height: screenHeight * 0.6,
            //   image: AssetImage(MyImages.onboardingScreen1)
            // ),
            Transform.scale(
              scale: 1.35,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: MySizes.xl + 10),
            MyText(
              title: subTitle,
              fontVariation: FontVariation.weight(500),
              fontSize: 18,
              color: isDark ? MyColors.white : MyColors.darkerBlue,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
