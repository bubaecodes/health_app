import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/features/shop/controllers/symptoms_checkers/symptoms_questions_controller.dart';
import 'package:health_app/features/shop/screens/symptoms_result/widgets/symptoms_blur_wrapper.dart';
import 'package:health_app/features/shop/screens/symptoms_result/widgets/symptoms_result_container.dart';
import 'package:health_app/features/shop/screens/symptoms_result/widgets/symptoms_result_lab_btn.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class SymptomsResultBody extends StatelessWidget {
  const SymptomsResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    final controller = Get.put(SymptomsQuestionsController());
    return Expanded(

      /// main body
      child: Container(
        width: screenWidth * 1,
        padding:  EdgeInsets.only(
          right: screenWidth * 0.040,
          left: screenWidth * 0.040,
          top: screenHeight * 0.02,
          bottom: screenHeight * 0.015,
        ),
        color: isDark ? MyColors.homeBlueBg : MyColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.006,),

            /// result container
            Container(
              height: screenHeight * 0.58,
              width: screenWidth * 0.9,
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.03,
                horizontal: screenWidth * 0.05
              ),
              decoration: BoxDecoration(
                border: Border.all(color: MyColors.blue, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.08)),
                color: isDark ? MyColors.darkerBlue : MyColors.lightBlue
              ),
              child: Column(
                children: [
                  /// low result
                  SymptomsBlurWrapper(
                    isActive: controller.resultLevel == ResultLevel.low,
                    child: SymptomsResultContainer(
                      backgroundColor: MyColors.lowResultBackground,
                      iconColor: Colors.green,
                      titleColor: Colors.green,
                      title: TheText.symptomsResultLowTitle,
                      subtitle: TheText.symptomsResultLowSubtitle,
                      icon: Icons.check_circle,
                      height: screenHeight * 0.155,
                      textColor: MyColors.darkerBlue,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.015,),

                  /// mid result
                  SymptomsBlurWrapper(
                    isActive: controller.resultLevel == ResultLevel.mid,
                    child: SymptomsResultContainer(
                      backgroundColor: MyColors.midResultBackground,
                      iconColor: MyColors.midResultYellow,
                      titleColor: MyColors.midResultYellow,
                      title: TheText.symptomsResultMidTitle,
                      subtitle: TheText.symptomsResultMidSubtitle,
                      icon: Icons.warning_rounded,
                      height: screenHeight * 0.13,
                      textColor: MyColors.darkerBlue,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.015,),

                  /// higher result
                  SymptomsBlurWrapper(
                    isActive: controller.resultLevel == ResultLevel.high,
                    child: SymptomsResultContainer(
                      backgroundColor: isDark? MyColors.highResultBackground : MyColors.highResultBackgroundLight,
                      iconColor: MyColors.highResultRed,
                      titleColor: MyColors.highResultRed,
                      title: TheText.symptomsResultHighTitle,
                      subtitle: TheText.symptomsResultHighSubtitle,
                      icon: Icons.info_rounded,
                      height: screenHeight * 0.1,
                      textColor: Colors.red,
                    ),
                  ),


                  SizedBox(height: screenHeight * 0.025,),
                  SymptomsResultLabBtn()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
