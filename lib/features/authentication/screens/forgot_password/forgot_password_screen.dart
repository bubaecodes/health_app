import 'package:flutter/material.dart';
import 'package:health_app/features/authentication/screens/forgot_password/widgets/forgot_password_appbar.dart';
import 'package:health_app/features/authentication/screens/forgot_password/widgets/forgot_password_body.dart';
import 'package:health_app/utils/constants/image_strings.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.080,
          vertical: screenHeight * 0.05,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(isDark ? MyImages.darkLoginSignupBg : MyImages.lightLoginSignupBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            ForgotPasswordAppBar(),

            SizedBox(height: screenHeight * 0.014),

            /// header logo
            Transform.scale(
              scale: 1.3,
              child: Image.asset(MyImages.forgotPasswordLogo, height: 160)
            ),

            ForgotPasswordBody()
          ],
        ),
      ),
    );
  }
}
