import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/shop/screens/book_physical_consult/widgets/change_doctor_btn.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class BookDoctor extends StatelessWidget {
  const BookDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth * 0.86,
          height: screenHeight * 0.115,
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.012,
              vertical: screenHeight * 0.01
          ),
          decoration: BoxDecoration(
            color: isDark ? MyColors.homeBlueBg : MyColors.white,
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
              /// first item --- img, name, and job description
              Row(
                children: [
                  /// img
                  Transform.scale(
                    scale: 0.92,
                    child: Image.asset(MyImages.homeAppointmentMaleDoctor, height: 64,),
                  ),

                  SizedBox(width: screenWidth * 0.013,),

                  /// doc name and job description
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //SizedBox(height: screenHeight * 0.02,),

                      /// doc name
                      MyText(
                        title: 'Dr. Anderson',
                        fontVariation: FontVariation.weight(600),
                        fontSize: screenWidth * 0.045,
                        color: isDark ? MyColors.white : MyColors.darkerBlue,
                      ),

                      /// job description
                      MyText(
                        title: 'Hepatologist',
                        fontVariation: FontVariation.weight(400),
                        fontSize: screenWidth * 0.039,
                        color: isDark ? MyColors.white : MyColors.darkerBlue,
                      ),

                      /// ratings
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: screenWidth * 0.043,),
                          MyText(
                            title: '4.9 ',
                            fontVariation: FontVariation.weight(500),
                            fontSize: screenWidth * 0.04,
                            color: isDark ? MyColors.white : MyColors.darkerBlue,
                          ),
                          MyText(
                            title: '(325 Reviews)',
                            fontVariation: FontVariation.weight(400),
                            fontSize: screenWidth * 0.035,
                            color: isDark ? MyColors.white : MyColors.darkerBlue,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),

              /// second item --- change doc btn
              Row(
                children: [
                  ChangeDoctorBtn()
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
