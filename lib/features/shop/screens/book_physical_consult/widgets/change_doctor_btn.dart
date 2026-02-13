import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class ChangeDoctorBtn extends StatelessWidget {
  const ChangeDoctorBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: (){},
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(
            const Size(0, 0),
          ),
          backgroundColor: WidgetStatePropertyAll(MyColors.blue),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(screenWidth * 0.05),
              side: BorderSide(color: MyColors.blue),
            ),
          ),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
            horizontal: screenWidth * 0.028,
            vertical: screenHeight * 0.006,
          )),
        ),

        child: MyText(
          title: 'Change',
          fontVariation: FontVariation.weight(500),
          fontSize: screenWidth * 0.039,
          color: MyColors.white,
        )
      ),
    );
  }
}
