import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class ConsultCallChatBtn extends StatelessWidget {
  const ConsultCallChatBtn({
    super.key,
    required this.backgroundColor,
    required this.icon,
    required this.text,
    this.iconColor,
    this.textColor,
    required this.onPressed,
  });

  final Color backgroundColor;
  final IconData icon;
  final String text;
  final Color? iconColor;
  final Color? textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    final controller = Get.put(SignupController());

    return ElevatedButton(
      // onPressed: () {
      //   controller.openWebsite('https://my.clevelandclinic.org/health/diseases/hepatitis');
      // },
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(
          const Size(0, 0),
        ),
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
        //backgroundColor: WidgetStatePropertyAll(isDark? MyColors.blue : MyColors.darkBlue),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenWidth * 0.015),
            side: BorderSide(color: MyColors.blue),
          ),
        ),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
          horizontal: screenWidth * 0.040,
          vertical: screenHeight * 0.008,
        )),
      ),

      child: Row(
        children: [
          //Icon(Icons.phone_rounded),
          Icon(icon, color: iconColor,),
          SizedBox(width: screenWidth * 0.017,),
          MyText(
            title: text,
            fontVariation: FontVariation.weight(500),
            fontSize: screenWidth * 0.038,
            color: textColor,
          ),
        ],
      ),
    );
  }
}
