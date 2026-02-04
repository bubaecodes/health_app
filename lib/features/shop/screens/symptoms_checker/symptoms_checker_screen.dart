import 'package:flutter/material.dart';
import 'package:health_app/features/shop/screens/symptoms_checker/widgets/symptoms_checker_appbar.dart';
import 'package:health_app/features/shop/screens/symptoms_checker/widgets/symptoms_checker_body.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class SymptomsCheckerScreen extends StatelessWidget {
  const SymptomsCheckerScreen({super.key});

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
                color: isDark ? MyColors.darkerBlue : MyColors.blue
            ),
            child: Column(
              children: [
                SymptomsCheckerAppbar(),
                SymptomsCheckerBody()
              ],
            ),
          )
        ],
      ),
    );
  }
}
