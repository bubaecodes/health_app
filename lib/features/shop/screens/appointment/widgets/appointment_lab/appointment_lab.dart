import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/shop/screens/appointment/widgets/appointment_lab/appointment_lab_btn.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class AppointmentTest extends StatelessWidget {
  const AppointmentTest({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.16,
      decoration: BoxDecoration(
        border: BoxBorder.all(color: MyColors.darkBlue),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(screenWidth * 0.045),
          topRight: Radius.circular(screenWidth * 0.045),
          bottomLeft: Radius.circular(screenWidth * 0.045),
          bottomRight: Radius.circular(screenWidth * 0.045),
        ),
        color: isDark ? MyColors.darkerBlue : Colors.blue[400],
      ),
      child: Row(
        children: [
          /// lab icon
          Image.asset(
            MyImages.appointmentLabTestImg,
          ),
          
          ///text and book lab test btn
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.026),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  title: TheText.appointmentHepatitisText,
                  fontVariation: FontVariation.weight(700),
                  fontSize: screenWidth * 0.045,
                  color: isDark ? MyColors.white : MyColors.darkerBlue,
                ),
                SizedBox(height: screenHeight * 0.007,),
                AppointmentLabBtn()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
