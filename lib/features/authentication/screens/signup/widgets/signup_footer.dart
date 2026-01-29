import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/routes/routes.dart';

class SignupFooter extends StatelessWidget {
  const SignupFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Text.rich(
        TextSpan(
          text: TheText.signupFooter1,
          style: TextStyle(
            fontSize: screenWidth * 0.037,
            fontFamily: 'Quicksand',
            fontVariations: [FontVariation('wght', 400)],
            color: isDark ? Colors.grey[500] : MyColors.darkBlue,
          ),
          children: [
            TextSpan(
              text: TheText.signupFooter2,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontFamily: 'Quicksand',
                fontVariations: [FontVariation('wght', 500)],
                color: MyColors.darkBlue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = (){
                  //Get.toNamed('/signupScreen');
                  Get.toNamed(Routes.loginScreen);
                }
            )
          ]
        )
      ),
    );
  }
}
