import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/shop/screens/book_lab_test/widgets/book_lab_location.dart';
import 'package:health_app/features/shop/screens/book_lab_test/widgets/book_lab_time.dart';
import 'package:health_app/features/shop/screens/book_lab_test/widgets/confirm_lab_booking_btn.dart';
import 'package:health_app/features/shop/screens/book_physical_consult/widgets/book_doctor.dart';
import 'package:health_app/features/shop/screens/book_physical_consult/widgets/book_physical_form.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class BookPhysicalBody extends StatelessWidget {
  const BookPhysicalBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Expanded(
      child: Container(
        width: screenWidth * 1,
        padding:  EdgeInsets.only(
          right: screenWidth * 0.040,
          left: screenWidth * 0.040,
          top: screenHeight * 0.002,
          bottom: screenHeight * 0.015,
        ),
        color: isDark ? MyColors.homeBlueBg : MyColors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// header img
              Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.225,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(MyImages.bookPhysicalHeaderImg),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              /// date & time header text
              MyText(
                title: TheText.bookPhysicalAppointmentTime,
                fontVariation: FontVariation.weight(600),
                fontSize: screenWidth * 0.052,
                color: MyColors.homeBlueBg,
              ),

              /// date & time schedule container
              Container(
                width: screenWidth * 0.98,
                height: screenHeight * 0.25,
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.02,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: MyColors.blue, width: 0.1),
                  borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.05)),
                  color:isDark ? MyColors.darkerBlue : MyColors.lightBlue,
                ),
                child: Column(
                  children: [
                    /// date & time schedule
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                      child: Row(
                        children: [
                          BookLabTime(text: TheText.labAppointmentDate, icon: Icons.calendar_month_rounded,),
                          SizedBox(width: screenWidth * 0.013,),
                          BookLabTime(text: TheText.labAppointmentTime,icon: Icons.access_time_rounded,),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02,),

                    /// reason for visit
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// title
                          Text.rich(
                            TextSpan(
                              text: TheText.bookPhysicalAppointmentReason1,
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontFamily: 'Quicksand',
                                fontVariations: [FontVariation('wght', 500)],
                                color: isDark ? MyColors.white : MyColors.darkerBlue,
                              ),
                              children: [
                                TextSpan(
                                  text: TheText.bookPhysicalAppointmentReason2,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.038,
                                    fontFamily: 'Quicksand',
                                    fontVariations: [FontVariation('wght', 400)],
                                    color: MyColors.darkBlue,
                                  ),
                                ),
                              ]
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01,),

                          /// form
                          BookPhysicalForm(),
                        ],
                      )
                    ),
                  ],
                ),
              ),


              SizedBox(height: screenHeight * 0.01,),


              /// doctor header text
              MyText(
                title: TheText.bookPhysicalAppointmentDoc,
                fontVariation: FontVariation.weight(600),
                fontSize: screenWidth * 0.052,
                color: MyColors.homeBlueBg,
              ),
              /// test type schedule
              Container(
                width: screenWidth * 0.98,
                height: screenHeight * 0.565,
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.02,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: MyColors.blue, width: 0.1),
                  borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.05)),
                  color:isDark ? MyColors.darkerBlue : MyColors.lightBlue,
                ),
                child: Column(
                  children: [
                    /// Doctor Profile
                    BookDoctor(),
                    SizedBox(height: screenHeight * 0.02,),

                    /// clinic location and map
                    BookLabLocation(),

                    SizedBox(height: screenHeight * 0.013,),
                    ConfirmLabBookingBtn(info: 'Please ensure to be at the clinic on your scheduled date.',),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
