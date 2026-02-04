import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class PhysicalConsultationBtn extends StatelessWidget {
  const PhysicalConsultationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);

    return ElevatedButton(
      // onPressed: () {
      //   controller.openWebsite('https://my.clevelandclinic.org/health/diseases/hepatitis');
      // },
      onPressed: (){},
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(
          const Size(0, 0),
        ), /// takes all original paddings away
        //backgroundColor: WidgetStatePropertyAll(isDark? MyColors.blue : MyColors.darkBlue),
        backgroundColor: WidgetStatePropertyAll(MyColors.darkBlue),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenWidth * 0.025),
            side: BorderSide(color: MyColors.lightGreenBg),
          ),
        ),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
          horizontal: screenWidth * 0.14,
          vertical: screenHeight * 0.024,
        )),
      ),

      child: Row(
        children: [
          MyText(
            title: TheText.appointmentBookPhysicalBtn,
            fontVariation: FontVariation.weight(600),
            fontSize: screenWidth * 0.041,
            //color: textColor,
          ),
          SizedBox(width: screenWidth * 0.02,),
          Icon(Icons.chevron_right,)
        ],
      ),
    );
  }
}
