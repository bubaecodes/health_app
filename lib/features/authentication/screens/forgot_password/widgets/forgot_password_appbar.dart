import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/screens/login/login_screen.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/sizes.dart';
import 'package:health_app/utils/constants/text_strings.dart';

class ForgotPasswordAppBar extends StatelessWidget {
  const ForgotPasswordAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: MySizes.xl - 7,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () => Get.to(LoginScreen()),
            child: Icon(Icons.arrow_back_ios, color: MyColors.darkBlue),
          ),
          SizedBox(width: screenWidth * 0.1),

          /// appbar text
          MyText(
            title: TheText.forgotPasswordTitle,
            fontVariation: FontVariation.weight(500),
            fontSize: screenWidth * 0.063,
            color: isDark ? MyColors.white : MyColors.darkBlue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
