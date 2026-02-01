import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/common/widgets/products/cart_icon/menu_cart_icon.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Padding(
      padding:  EdgeInsets.only(
        right: screenWidth * 0.040,
        left: screenWidth * 0.040,
        //top: screenHeight * 0.001, /// i added safearea widget in home screen
        bottom: screenHeight * 0.015,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///first row -- person icon and greeting
          Row(
            children: [
              Container(
                width: screenWidth * 0.12,
                height: screenHeight * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: isDark ? Colors.blueAccent[400] : MyColors.blue,
                ),
                child: Center(
                  /// use an image svg
                  child: Icon(
                    Icons.person,
                    color: MyColors.white,
                    size: screenHeight * 0.04,
                  ),
                ),
              ),
              SizedBox(width: screenWidth * 0.04),

              MyText(
                title: 'Hello, John!',
                fontVariation: FontVariation.weight(600),
                fontSize: 19,
                color: isDark ? MyColors.white : MyColors.darkerBlue,
              )
            ],
          ),

          /// cart icon
          MenuCartIcon()
        ],
      ),
    );
  }
}
