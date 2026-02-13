import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';
import 'package:health_app/utils/routes/routes.dart';

class SymptomsResultLabBtn extends StatelessWidget {
  const SymptomsResultLabBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    //final controller = Get.put(SymptomsQuestionsController());
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){
          Get.toNamed(Routes.bookLabScreen);
        },

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
          // padding: WidgetStateProperty.all(EdgeInsets.symmetric(
          //   horizontal: screenWidth * 0.2,
          //   vertical: screenHeight * 0.017,
          // )),
        ),

        child: MyText(
          title: TheText.symptomsResultBookLabBtn,
          fontVariation: FontVariation.weight(600),
          fontSize: screenWidth * 0.045,
          color: isDark ? MyColors.white : MyColors.white,
        ),
      ),
    );
  }
}
