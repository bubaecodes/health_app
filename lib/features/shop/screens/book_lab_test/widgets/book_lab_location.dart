import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class BookLabLocation extends StatelessWidget {
  const BookLabLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: screenWidth * 0.88,
      height: screenHeight * 0.3,
      padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.007,
        horizontal: screenWidth * 0.025,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.blue, width: 0.11),
        borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.06)),
        color: isDark ? MyColors.homeBlueBg : MyColors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.location_on, size: screenWidth * 0.1,),
              SizedBox(width: screenWidth * 0.02,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    title: TheText.bookTestLabName,
                    fontVariation: FontVariation.weight(600),
                    fontSize: screenWidth * 0.05,
                    color: isDark ? MyColors.white : MyColors.homeBlueBg,
                  ),
                  MyText(
                    title: TheText.bookTestLocation,
                    fontVariation: FontVariation.weight(500),
                    fontSize: screenWidth * 0.04,
                    color: isDark ? MyColors.white : MyColors.homeBlueBg,
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: screenHeight * 0.013,),

          /// map area
          Container(
            width: screenWidth * 0.88,
            height: screenHeight * 0.205,
            padding: EdgeInsets.symmetric(
              vertical: screenHeight * 0.007,
              horizontal: screenWidth * 0.025,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.blue, width: 0.11),
              borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.06)),
              color: Colors.orange,
            ),
            child: Center(child: Text('API Map Area', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
          ),
        ],
      ),
    );
  }
}
