import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/shop/screens/home/widgets/home_body_widgets/home_learn_btn.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class HomeFirstWidget extends StatelessWidget {
  const HomeFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Container(
      height: screenHeight * 0.18,
      width: screenWidth * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(screenWidth * 0.04),
          topRight: Radius.circular(screenWidth * 0.04),
          bottomLeft: Radius.circular(screenWidth * 0.04),
          bottomRight: Radius.circular(screenWidth * 0.04),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            isDark ? MyImages.darkLoginSignupBg : MyImages.lightLoginSignupBg,
          ),
        ),
      ),
      child: Row(
        children: [
          // Image.asset(
          //   MyImages.liverImg,
          //   width: screenWidth * 0.41,
          //   height: screenHeight * 0.2,
          // ),

          Transform.scale(
            scale: 1.2,
            child: Image.asset(MyImages.liverImg, height: 98,)
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// title
              SizedBox(height: screenHeight * 0.011,),
              MyText(
                title: TheText.homeFirstContainerTitle,
                fontVariation: FontVariation.weight(600),
                fontSize: screenWidth * 0.05,
                color: isDark ? MyColors.white : MyColors.darkerBlue,
              ),

              /// subtitle
              SizedBox(height: screenHeight * 0.008,),
              SizedBox(
                width: screenWidth * 0.43,
                child: MyText(
                  title: TheText.homeFirstContainerSubTitle,
                  fontVariation: FontVariation.weight(500),
                  fontSize: screenWidth * 0.037,
                  maxLines: 2,
                  color: isDark ? MyColors.white : MyColors.darkerBlue,
                ),
              ),

              /// learn more btn
              SizedBox(height: screenHeight * 0.005,),
              Center(child: HomeLearnBtn()),
            ],
          )
        ],
      ),
    );
  }
}
