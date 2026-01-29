import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class HomeArticleSecondItem extends StatelessWidget {
  const HomeArticleSecondItem({super.key});

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
            SizedBox(
              width: screenWidth * 0.39,
              child: MyText(
                title: TheText.homeArticleHeadingB,
                fontVariation: FontVariation.weight(500),
                fontSize: screenWidth * 0.033,
                color: isDark ? MyColors.white : MyColors.darkerBlue,
                maxLines: 2,
              ),
            ),
            SizedBox(height: screenHeight * 0.008,),

            /// second item --- date, read more btn & img
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(height: screenHeight * 0.009,),
                    /// date
                    MyText(
                      title: '2 weeks ago',
                      fontVariation: FontVariation.weight(500),
                      fontSize: screenWidth * 0.03,
                      color: Colors.grey[600],
                      maxLines: 2,
                    ),


                    SizedBox(height: screenHeight * 0.008,),

                    /// text btn --- read more
                    InkWell(
                      onTap: (){
                        controller.openWebsite('https://www.drugs.com/medical-answers/new-drugs-hepatitis-3511306/');
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

                /// img
                Expanded(
                  child: Image.asset(
                    MyImages.homeSyringeImg,
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.19,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
