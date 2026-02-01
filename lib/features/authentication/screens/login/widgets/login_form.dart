import 'package:flutter/material.dart';
import 'package:health_app/features/authentication/screens/login/widgets/login_btn.dart';
import 'package:health_app/features/authentication/screens/login/widgets/login_forgot_password.dart';
import 'package:health_app/utils/constants/colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight / 2.6,
      width: screenWidth * 0.9,
      decoration: BoxDecoration(
        color: isDark ? MyColors.homeBlueBg : MyColors.white,
        borderRadius: BorderRadius.circular(18)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  /// email
                  SizedBox(
                    height: screenWidth * 0.127,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_sharp, color: MyColors.blue),
                        filled: isDark ? true : false,
                        fillColor: isDark ? Colors.grey[900] : MyColors.white,
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Quicksand',
                          fontVariations: [FontVariation('wght', 400)],
                          color: isDark ? Colors.grey[500] : MyColors.darkBlue,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: MyColors.darkBlue, width: 0.2),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.017),

                  /// password
                  SizedBox(
                    height: screenWidth * 0.127,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_sharp, color: MyColors.blue),
                        filled: isDark ? true : false,
                        fillColor: isDark ? Colors.grey[900] : MyColors.white,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Quicksand',
                          fontVariations: [FontVariation('wght', 400)],
                          color: isDark ? Colors.grey[500] : MyColors.darkBlue,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: MyColors.darkBlue, width: 0.2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.025),

            ///login btn
            LoginBtn(),

            SizedBox(height: screenHeight * 0.03),

            ///forgot password
            LoginForgotPassword()
          ],
        ),
      ),
    );
  }
}
