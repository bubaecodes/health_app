import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class HomeArticle extends StatelessWidget {
  const HomeArticle({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final controller = Get.put(SignupController());
    return Expanded(
      child: Container(
        width: screenWidth * 0.42,
        height: screenHeight * 0.145,
        padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.02,
        vertical: screenHeight * 0.01
        ),
        decoration: BoxDecoration(
          color: isDark ? MyColors.darkerBlue : MyColors.creamBg,
            border: BoxBorder.all(color: MyColors.darkBlue),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(screenWidth * 0.04),
            topRight: Radius.circular(screenWidth * 0.04),
            bottomRight: Radius.circular(screenWidth * 0.04),
            bottomLeft: Radius.circular(screenWidth * 0.04),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// first item
            Row(
              children: [
                /// img
                Container(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(screenWidth * 0.01),
                      topRight: Radius.circular(screenWidth * 0.1),
                      bottomLeft: Radius.circular(screenWidth * 0.1),
                      bottomRight: Radius.circular(screenWidth * 0.1),
                    ),
                    //color: Colors.blueAccent[400],
                    color: MyColors.darkBlue,
                  ),
                  child: Image.asset(
                    MyImages.homeVirusImg,
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.11,
                  ),
                ),

                SizedBox(width: screenWidth * 0.007,),

                /// text
                SizedBox(
                  width: screenWidth * 0.242,
                  child: MyText(
                    title: TheText.homeArticleHeadingA,
                    fontVariation: FontVariation.weight(500),
                    fontSize: screenWidth * 0.033,
                    color: isDark ? MyColors.white : MyColors.darkerBlue,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.008,),

            /// second item --- date
            MyText(
              title: '3 days ago',
              fontVariation: FontVariation.weight(500),
              fontSize: screenWidth * 0.03,
              color: Colors.grey[600],
              maxLines: 2,
            ),
            SizedBox(height: screenHeight * 0.006,),

            /// text btn --- read more
            InkWell(
              onTap: (){
                controller.openWebsite('https://www.cdc.gov/hepatitis-b/about/index.html');
              },
              child: MyText(
                title: 'Read More',
                fontVariation: FontVariation.weight(600),
                fontSize: screenWidth * 0.035,
                color: isDark ? Colors.grey[500] : MyColors.darkBlue,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
