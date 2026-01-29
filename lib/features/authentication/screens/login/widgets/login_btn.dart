import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';
import 'package:health_app/utils/routes/routes.dart';


class LoginBtn extends StatelessWidget {
  const LoginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: () {
        //Get.toNamed(Routes.homeScreen);
        Get.toNamed(Routes.bottomNavMenu);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(MyColors.blue),
        elevation: WidgetStatePropertyAll(0.5),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: MyColors.blue),
          ),
        ),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
          horizontal: screenWidth * 0.31,
          vertical: screenHeight * 0.017,
        )),
      ),

      child: MyText(
        title: TheText.loginBtnText,
        fontVariation: FontVariation.weight(600),
        fontSize: screenWidth * 0.047,
        color: MyColors.white,
      ),
    );
  }
}
