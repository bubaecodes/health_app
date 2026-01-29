import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/screens/forgot_password/forgot_password_screen.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';

class LoginForgotPassword extends StatelessWidget {
  const LoginForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () => Get.to(ForgotPasswordScreen()),
      child: MyText(
        title: TheText.loginForgotPassword,
        fontVariation: FontVariation.weight(700),
        fontSize: screenWidth * 0.04,
        color: MyColors.blue,
      )
    );
  }
}
