import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:health_app/features/authentication/screens/signup/widgets/signup_btn.dart';
import 'package:health_app/features/authentication/screens/signup/widgets/signup_footer.dart';
import 'package:health_app/features/authentication/screens/signup/widgets/signup_privacy.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/sizes.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final controller = Get.put(SignupController());
    return Container(
      height: screenHeight / 1.8,
      width: screenWidth * 0.9,
      decoration: BoxDecoration(
        color: isDark ? MyColors.homeBlueBg : MyColors.white,
        borderRadius: BorderRadius.circular(18)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  /// full name
                  SizedBox(
                    height: MySizes.xl + 12,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: MyColors.blue),
                        filled: isDark ? true : false,
                        fillColor: isDark ? Colors.grey[900] : MyColors.white,
                        hintText: 'Full Name',
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

                  SizedBox(height: screenHeight * 0.016),

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

                  SizedBox(height: screenHeight * 0.016),

                  /// password
                  Obx(
                    (){
                      return SizedBox(
                        height: screenWidth * 0.127,
                        child: TextField(
                          obscureText: controller.isPasswordVisible.value,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock, color: MyColors.blue),
                            filled: isDark ? true : false,
                            fillColor: isDark ? Colors.grey[900] : MyColors.white,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Quicksand',
                              fontVariations: [FontVariation('wght', 400)],
                              color: isDark ? Colors.grey[500] : MyColors.darkBlue,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: (){
                                controller.isPasswordVisible.toggle();
                              },
                              child: Icon(
                                controller.isPasswordVisible.value ? Icons.visibility_off : Icons.visibility,
                                color: Colors.grey[500]
                              ),
                              //child: Icon(isTap ? Icons.visibility : Icons.visibility_off),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: MyColors.darkBlue, width: 0.2),
                            ),
                          ),
                        ),
                      );
                    }
                  ),

                  SizedBox(height: screenHeight * 0.016),

                  /// confirm password
                  Obx(
                    (){
                      return SizedBox(
                        height: screenWidth * 0.127,
                        child: TextField(
                          obscureText: controller.isPasswordVisible.value,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock, color: MyColors.blue),
                            filled: isDark ? true : false,
                            fillColor: isDark ? Colors.grey[900] : MyColors.white,
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Quicksand',
                              fontVariations: [FontVariation('wght', 400)],
                              color: isDark ? Colors.grey[500] : MyColors.darkBlue,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: (){
                                controller.isPasswordVisible.toggle();
                              },
                              child: Icon(
                                  controller.isPasswordVisible.value ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.grey[500]
                              ),
                              //child: Icon(isTap ? Icons.visibility : Icons.visibility_off),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: MyColors.darkBlue, width: 0.2),
                            ),
                          ),
                        ),
                      );
                    }
                  ),
                ],
              ),
            ),

            SizedBox(height: screenHeight * 0.004),
            SignupPrivacy(),
            SizedBox(height: screenHeight * 0.004),

            ///signup btn
            SignupBtn(),
            SizedBox(height: screenHeight * 0.015),

            ///signup footer
            SignupFooter()
          ],
        ),
      ),
    );
  }
}
