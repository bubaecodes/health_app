import 'package:flutter/material.dart';
import 'package:health_app/features/shop/screens/appointment/widgets/appointment_test.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class AppointmentBody extends StatelessWidget {
  const AppointmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Expanded(
      child: Container(
        padding:  EdgeInsets.only(
          right: screenWidth * 0.040,
          left: screenWidth * 0.040,
          top: screenHeight * 0.012,
          bottom: screenHeight * 0.015,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(isDark ? MyImages.darkLoginSignupBg : MyImages.lightLoginSignupBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            AppointmentTest()
          ],
        ),
      ),
    );
  }
}
