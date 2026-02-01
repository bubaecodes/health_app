import 'package:flutter/material.dart';
import 'package:health_app/features/shop/screens/appointment/widgets/appointment_appbar.dart';
import 'package:health_app/features/shop/screens/appointment/widgets/appointment_body.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
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
                AppointmentAppbar(),
                AppointmentBody()
              ],
            ),
          )
        ],
      ),
    );
  }
}
