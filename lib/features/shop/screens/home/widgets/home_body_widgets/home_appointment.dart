import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class HomeAppointment extends StatelessWidget {
  const HomeAppointment({
    super.key,
    required this.text,
    required this.time,
    required this.scale,
    required this.height, required this.image,
  });

  final String text;
  final String time;
  final double scale;
  final double height;
  final String image;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // /// header text
        // MyText(
        //   title: TheText.homeAppointmentTitle,
        //   fontVariation: FontVariation.weight(600),
        //   fontSize: screenWidth * 0.05,
        //   color: isDark ? MyColors.white : MyColors.darkerBlue,
        // ),
        // SizedBox(height: screenHeight * 0.01,),

        Container(
          width: screenWidth * 0.9,
          height: screenHeight * 0.115,
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.02,
            vertical: screenHeight * 0.01
          ),
          decoration: BoxDecoration(
            color: isDark ? MyColors.darkerBlue : MyColors.creamBg,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(screenWidth * 0.04),
              topRight: Radius.circular(screenWidth * 0.04),
              bottomRight: Radius.circular(screenWidth * 0.04),
              bottomLeft: Radius.circular(screenWidth * 0.04),
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// first item --- img, name, and time
              Row(
                children: [
                  /// img
                  Container(
                    height: screenHeight * 0.08,
                    width: screenWidth * 0.16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(screenWidth * 0.1),
                        topRight: Radius.circular(screenWidth * 0.1),
                      ),
                      color: MyColors.blue
                    ),
                    child: Transform.scale(
                      scale: scale,
                      child: Image.asset(image, height: height,),
                    ),
                  ),

                  SizedBox(width: screenWidth * 0.015,),

                  /// doc name and time
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.02,),
                      MyText(
                        title: text,
                        fontVariation: FontVariation.weight(600),
                        fontSize: screenWidth * 0.045,
                        color: isDark ? MyColors.white : MyColors.darkerBlue,
                      ),
                      SizedBox(height: screenHeight * 0.008,),

                      MyText(
                        title: time,
                        fontVariation: FontVariation.weight(400),
                        fontSize: screenWidth * 0.039,
                        color: isDark ? MyColors.white : MyColors.darkerBlue,
                      ),
                    ],
                  )
                ],
              ),
              
              /// second item --- leading icon
              IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.chevron_right, color: isDark ? MyColors.white : MyColors.darkerBlue,),
              )
            ],
          ),
        )
      ],
    );
  }
}
