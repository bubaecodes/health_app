import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class HomeSecondWidget extends StatelessWidget {
  const HomeSecondWidget({super.key, required this.text, required this.image, required this.onTap});

  final String text;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final controller = Get.put(SignupController());
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: screenWidth * 0.1,
          height: screenHeight * 0.098,
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.02,
            vertical: screenHeight * 0.01,
          ),
          decoration: BoxDecoration(
            color: isDark ? MyColors.darkerBlue : MyColors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(screenWidth * 0.04),
              topRight: Radius.circular(screenWidth * 0.04),
              bottomRight: Radius.circular(screenWidth * 0.04),
              bottomLeft: Radius.circular(screenWidth * 0.04),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///img
              Container(
                width: screenWidth * 0.081,
                height: screenHeight * 0.046,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(screenWidth * 0.008),
                    topRight: Radius.circular(screenWidth * 0.008),
                    bottomRight: Radius.circular(screenWidth * 0.008),
                    bottomLeft: Radius.circular(screenWidth * 0.008),
                  ),
                  //color: Colors.blueAccent[400],
                  color: isDark ? Colors.blue[300] : Colors.blue[900],
                ),
                child: Image.asset(
                  // MyImages.homeTodoLogo,
                  image,
                  height: screenHeight * 0.04,
                  width: screenWidth * 0.04,
                  color: isDark ? MyColors.darkerBlue : MyColors.white,
                ),
              ),
              SizedBox(width: screenWidth * 0.03,),

              ///text
              Expanded(
                child: SizedBox(
                  width: screenWidth * 0.04,
                  child: MyText(
                    title: text,
                    fontVariation: FontVariation.weight(500),
                    fontSize: screenWidth * 0.036,
                    color: MyColors.white,
                    maxLines: 2,
                  ),
                ),
              ),

              ///the right arrow icon
              Icon(Icons.arrow_right, color: Colors.blue[100],)
            ],
          ),
        ),
      ),
    );
  }
}
