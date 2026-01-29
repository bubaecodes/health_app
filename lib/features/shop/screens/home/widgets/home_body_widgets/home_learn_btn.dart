import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class HomeLearnBtn extends StatelessWidget {
  const HomeLearnBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    final controller = Get.put(SignupController());
    return ElevatedButton(
        onPressed: () {
          controller.openWebsite('https://my.clevelandclinic.org/health/diseases/hepatitis');
        },
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(
            const Size(0, 0),
          ),
          backgroundColor: WidgetStatePropertyAll(MyColors.blue),
          //elevation: WidgetStatePropertyAll(0.1),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: MyColors.blue),
            ),
          ),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
            horizontal: screenWidth * 0.030,
            vertical: screenHeight * 0.007,
          )),
        ),

        child: MyText(
          title: TheText.homeFirstContainerBtnLink,
          fontVariation: FontVariation.weight(500),
          fontSize: screenWidth * 0.038,
          color: isDark ? MyColors.white : MyColors.white,
        )
    );
  }
}
