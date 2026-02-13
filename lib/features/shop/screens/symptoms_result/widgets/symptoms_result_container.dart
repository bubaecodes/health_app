import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class SymptomsResultContainer extends StatelessWidget {
  const SymptomsResultContainer({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.titleColor,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.textColor,
    this.height,
  });

  final Color backgroundColor;
  final Color iconColor;
  final Color titleColor;
  final IconData icon;
  final String title;
  final String subtitle;
  final Color textColor;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: screenWidth * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.03)),
        color: backgroundColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                /// icon
                Icon(
                  icon,
                  size: 25,
                  color: iconColor,
                ),
                SizedBox(width: screenWidth * 0.03,),

                ///title
                MyText(
                  title: title,
                  fontVariation: FontVariation.weight(600),
                  fontSize: screenWidth * 0.054,
                  color: titleColor,
                ),
              ],
            ),

            ///subtitle
            SizedBox(height: screenHeight * 0.003,),
            MyText(
              title: subtitle,
              fontVariation: FontVariation.weight(600),
              fontSize: screenWidth * 0.037,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}
