import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/features/shop/controllers/symptoms_checkers/symptoms_questions_controller.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class SymptomsBarchartContainer extends StatelessWidget {
  const SymptomsBarchartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    final controller = Get.put(SymptomsQuestionsController());
    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.05)),
        border: Border.all(color: MyColors.blue, width:  0.2),
        image: DecorationImage(
          image: AssetImage(isDark ? MyImages.darkLoginSignupBg : MyImages.lightLoginSignupBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Container(
          //   width: screenWidth * 0.4,
          //   height: screenHeight * 0.007,
          //   color: Colors.red,
          // ),
          Obx(
            ()=> SizedBox(
              width: screenWidth * 0.3,
              height: screenHeight * 0.01,
              child: LinearProgressIndicator(value: controller.progress,),
            ),
          ),
          Transform.scale(
            scale: 1.3,
            child: Image.asset(
              MyImages.symptomsCheckerImg,
            ),
          ),
        ],
      ),
    );
  }
}
