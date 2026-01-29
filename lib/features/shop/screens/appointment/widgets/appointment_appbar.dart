import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';
import 'package:health_app/utils/routes/routes.dart';

class AppointmentAppbar extends StatelessWidget {
  const AppointmentAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Padding(
      padding:  EdgeInsets.only(
        right: screenWidth * 0.040,
        left: screenWidth * 0.040,
        top: screenHeight * 0.045,
        bottom: screenHeight * 0.025,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Get.toNamed(Routes.homeScreen);
            },
            child: Icon(
              Icons.chevron_left_outlined,
              size: screenHeight * 0.04,
              color: MyColors.white,
              //color:  isDark ? MyColors.white : MyColors.darkerBlue,
            ),
          ),
          SizedBox(width: screenWidth * 0.05),

          MyText(
            title: TheText.appointmentScreenAppbar,
            fontVariation: FontVariation.weight(600),
            fontSize: 19,
            color: MyColors.white,
            //color: isDark ? MyColors.white : MyColors.darkerBlue,
          )
        ],
      ),
    );
    // return AppBar(
    //   leading: Icon(Icons.chevron_left, size: screenHeight * 0.04,),
    //   title: MyText(
    //     title: TheText.appointmentScreenAppbar,
    //     fontVariation: FontVariation.weight(600),
    //     fontSize: 19
    //   ),
    //   backgroundColor: isDark ? MyColors.darkerBlue : MyColors.darkBlue,
    // );
  }
}
