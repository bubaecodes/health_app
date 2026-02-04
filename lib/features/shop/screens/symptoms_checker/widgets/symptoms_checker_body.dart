import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/shop/controllers/symptoms_checkers/symptoms_questions_controller.dart';
import 'package:health_app/features/shop/screens/symptoms_checker/widgets/symptoms_barchart_container.dart';
import 'package:health_app/features/shop/screens/symptoms_checker/widgets/symptoms_next_btn.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class SymptomsCheckerBody extends StatelessWidget {
  const SymptomsCheckerBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    final controller = Get.put(SymptomsQuestionsController());
    return Expanded(
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
            SymptomsBarchartContainer(),
            SizedBox(height: screenHeight * 0.01,),

            /// questions
            Obx(
              ()=> MyText(
                title: controller.questions[controller.currentIndex.value],
                fontVariation: FontVariation.weight(500),
                fontSize: screenWidth * 0.05,
              ),
            ),
            SizedBox(height: screenHeight * 0.01,),

            /// checkboxes
            Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.03)),
                border: Border.all(color: isDark ? MyColors.blue : MyColors.blue, width:  0.2),
                color: isDark ? MyColors.homeBlueBg : MyColors.creamBg,
              ),
              // child: Column(
              //   children: [
              //     Row(
              //       children: [
              //         Checkbox(value: true, onChanged: (bool? value){}),
              //         MyText(
              //           title: 'Yes',
              //           fontVariation: FontVariation.weight(500),
              //           fontSize: screenWidth * 0.04,
              //         ),
              //       ],
              //     ),
              //     SizedBox(width: screenWidth * 0.87, child: Divider(color: MyColors.darkBlue,)),
              //     Row(
              //       children: [
              //         Checkbox(value: true, onChanged: (bool? value){}),
              //         MyText(
              //           title: 'Yes',
              //           fontVariation: FontVariation.weight(500),
              //           fontSize: screenWidth * 0.04,
              //         ),
              //       ],
              //     ),
              //   ],
              // ),

              child: Obx(() => RadioGroup<bool>(
                groupValue: controller.answers[controller.currentIndex.value],
                  onChanged: controller.selectAnswer,
                  child: Column(
                    children: const [
                      RadioListTile<bool>(
                        title: Text('Yes'),
                        value: true,
                      ),
                      RadioListTile<bool>(
                        title: Text('No'),
                        value: false,
                      ),
                    ],
                  ),
                ),
              ),

        // child: Obx(
                  //   () => Column(
                  //     children: [
                  //       RadioListTile<bool>(
                  //         title: const Text('Yes'),
                  //         value: true,
                  //         groupValue: controller.answers[controller.currentIndex.value],
                  //         onChanged: controller.selectAnswer,
                  //       ),
                  //       RadioListTile<bool>(
                  //         title: const Text('No'),
                  //         value: false,
                  //         groupValue:
                  //         controller.answers[controller.currentIndex.value],
                  //         onChanged: controller.selectAnswer,
                  //       ),
                  //     ],
                  //   )
                  // ),

            ),

            SizedBox(height: screenHeight * 0.03,),

            /// next btn
            SymptomsNextBtn()
          ],
        ),
      ),
    );
  }
}
