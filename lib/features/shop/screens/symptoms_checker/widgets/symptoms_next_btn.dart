import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/shop/controllers/symptoms_checkers/symptoms_questions_controller.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class SymptomsNextBtn extends StatelessWidget {
  const SymptomsNextBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    final controller = Get.put(SymptomsQuestionsController());
    return Obx(
      ()=> ElevatedButton(
        onPressed: controller.answers[controller.currentIndex.value] == null
        ? null
        : controller.nextQuestion,

        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(
            const Size(0, 0),
          ),
          backgroundColor: WidgetStatePropertyAll(MyColors.blue),
          //elevation: WidgetStatePropertyAll(0.1),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(screenWidth * 0.035),
              side: BorderSide(color: MyColors.blue),
            ),
          ),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
            horizontal: screenWidth * 0.4,
            vertical: screenHeight * 0.017,
          )),
        ),

        child: MyText(
          title: TheText.symptomsNextBtn,
          fontVariation: FontVariation.weight(600),
          fontSize: screenWidth * 0.045,
          color: isDark ? MyColors.white : MyColors.white,
        ),
      ),
    );
  }
}
