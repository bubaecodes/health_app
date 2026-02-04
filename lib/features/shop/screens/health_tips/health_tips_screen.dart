import 'package:flutter/material.dart';
import 'package:health_app/features/shop/screens/health_tips/widgets/health_tips_appbar.dart';
import 'package:health_app/features/shop/screens/health_tips/widgets/health_tips_body.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class HealthTipsScreen extends StatelessWidget {
  const HealthTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.only(
              top: screenHeight * 0.027,
              //bottom: screenHeight * 0.02,
            ),
            decoration: BoxDecoration(
                color: isDark ? MyColors.darkerBlue : Colors.blueAccent[400]
            ),
            child: Column(
              children: [
                HealthTipsAppbar(),
                HealthTipsBody()
              ],
            ),
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
