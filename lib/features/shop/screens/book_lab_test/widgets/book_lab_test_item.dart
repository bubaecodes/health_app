import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class BookLabTestItem extends StatelessWidget {
  const BookLabTestItem({
    super.key,
    required this.image,
    required this.heading,
    required this.subHeading,
    required this.duration,
    this.icon,
    required this.price,
    required this.height,
  });

  final String image;
  final String heading;
  final String subHeading;
  final String duration;
  final IconData? icon;
  final String price;
  final double height;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: screenWidth * 0.88,
      height: height,
      padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.007,
        horizontal: screenWidth * 0.025,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.blue, width: 0.11),
        borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.06)),
        color:isDark ? MyColors.homeBlueBg : MyColors.white,
      ),
      child: Row(
        children: [
          /// img
          Container(
            width: screenHeight * 0.075,
            height: screenHeight * 0.075,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: MyColors.lightBlue,
            ),
            child: Transform.scale(
              scale: 1.4,
              child: Image.asset(
                //MyImages.bookLabTypeImg1,
                image
              ),
            ),
          ),
          SizedBox(width: screenWidth * 0.02,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///title
                MyText(
                  title: heading,
                  fontVariation: FontVariation.weight(500),
                  fontSize: screenWidth * 0.044,
                  color: isDark ? MyColors.white :MyColors.homeBlueBg,
                ),

                /// subtitle & check icon
                Row(
                  children: [
                    Expanded(
                      child: MyText(
                        title: subHeading,
                        fontVariation: FontVariation.weight(500),
                        fontSize: screenWidth * 0.036,
                        color: isDark ? MyColors.white :MyColors.homeBlueBg,
                        maxLines: 2,
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.check_circle),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.003,),

                /// duration and price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(icon),
                        SizedBox(width: screenWidth * 0.015,),
                        MyText(
                          title: duration,
                          fontVariation: FontVariation.weight(400),
                          fontSize: screenWidth * 0.038,
                          color: isDark ? MyColors.white :MyColors.homeBlueBg,
                          maxLines: 2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: screenWidth * 0.15,
                          height: screenHeight * 0.03,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.07)),
                            border: Border.all(color: MyColors.blue, width: 0.3),
                            color: MyColors.lightBlue,
                          ),
                          child: Center(
                            child: MyText(
                              title: price,
                              fontVariation: FontVariation.weight(400),
                              fontSize: screenWidth * 0.035,
                              color: MyColors.homeBlueBg,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
