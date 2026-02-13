import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class AppointmentLabBtn extends StatelessWidget {
  const AppointmentLabBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);

    return ElevatedButton(
      /// should have similar function as booking physical consultation
      onPressed: () {
        Get.toNamed('/book-lab-screen');
      },
      style: ButtonStyle(
        /// minimum size takes off original paddings
        minimumSize: WidgetStateProperty.all(
          const Size(0, 0),
        ),
        backgroundColor: isDark
            ? WidgetStatePropertyAll(MyColors.blue)
            : WidgetStatePropertyAll(MyColors.darkBlue),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(screenWidth * 0.044),
              //topRight: Radius.circular(screenWidth * 0.044),
              bottomRight: Radius.circular(screenWidth * 0.044),
            ),
            side: BorderSide(color: MyColors.blue),
          ),
        ),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
          horizontal: screenWidth * 0.045,
          vertical: screenHeight * 0.01,
        )),
      ),

      child: Row(
        children: [
          MyText(
            title: TheText.appointmentHepatitisBtnText,
            fontVariation: FontVariation.weight(700),
            fontSize: screenWidth * 0.042,
            color: isDark ? MyColors.white : MyColors.white,
          ),
          SizedBox(width: screenWidth * 0.06,),

          /// direction
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}
