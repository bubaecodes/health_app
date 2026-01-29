import 'package:flutter/material.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class AppointmentTest extends StatelessWidget {
  const AppointmentTest({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(isDark ? MyImages.darkLoginSignupBg : MyImages.lightLoginSignupBg),
            fit: BoxFit.cover
        ),
      ),
    );
  }
}
