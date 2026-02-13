import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class BookLabTime extends StatelessWidget {
  const BookLabTime({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: (){},
      child: Container(
        width: screenWidth * 0.432,
        height: screenHeight * 0.068,
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.007,
          horizontal: screenWidth * 0.02,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.blue, width: 0.11),
          borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.03)),
          color:isDark ? MyColors.homeBlueBg : MyColors.white,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: screenWidth * 0.045,
            ),
            SizedBox(width: screenWidth * 0.007,),
            MyText(
              title: text,
              fontVariation: FontVariation.weight(500),
              fontSize: screenWidth * 0.042,
              color: isDark ? MyColors.white : MyColors.homeBlueBg,
            ),
            SizedBox(width: screenWidth * 0.01,),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
