import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';

class SignupPrivacy extends StatelessWidget {
  const SignupPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Obx(
          (){
            return Checkbox(
              value: controller.isPrivacyChecked.value,
              checkColor: MyColors.white,
              activeColor: MyColors.darkBlue,
              //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (value) {
                controller.isPrivacyChecked.value = value!;
              }
            );
          }
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
                text: TheText.signupPrivacyText1,
                style: TextStyle(
                  fontSize: screenWidth * 0.037,
                  fontFamily: 'Quicksand',
                  fontVariations: [FontVariation('wght', 400)],
                  color: isDark ? Colors.grey[500] : MyColors.darkerBlue,

                ),
                children: [
                  TextSpan(
                      text: TheText.signupPrivacyText2,
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontFamily: 'Quicksand',
                        fontVariations: [FontVariation('wght', 500)],
                        color: MyColors.darkBlue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = (){
                        controller.openWebsite('https://usercentrics.com/guides/terms-of-service/');
                        }
                  ),
                  TextSpan(
                      text: TheText.signupPrivacyText3,
                      style: TextStyle(
                        fontSize: screenWidth * 0.037,
                        fontFamily: 'Quicksand',
                        fontVariations: [FontVariation('wght', 400)],
                        color: isDark ? Colors.grey[500] : MyColors.darkerBlue,
                      ),
                  ),
                  TextSpan(
                      text: TheText.signupPrivacyText4,
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontFamily: 'Quicksand',
                        fontVariations: [FontVariation('wght', 500)],
                        color: MyColors.darkBlue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = (){
                          controller.openWebsite('https://www.privacypolicyonline.com/');
                          //Get.toNamed('/signupScreen');
                          //Get.toNamed(Routes.loginScreen);
                        }
                  )
                ]
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
