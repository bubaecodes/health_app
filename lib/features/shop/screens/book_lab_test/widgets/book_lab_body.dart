import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/shop/screens/book_lab_test/widgets/book_lab_location.dart';
import 'package:health_app/features/shop/screens/book_lab_test/widgets/book_lab_test_item.dart';
import 'package:health_app/features/shop/screens/book_lab_test/widgets/book_lab_time.dart';
import 'package:health_app/features/shop/screens/book_lab_test/widgets/confirm_lab_booking_btn.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class BookLabBody extends StatelessWidget {
  const BookLabBody({super.key});

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
                height: screenHeight * 0.17,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(MyImages.bookLabHeaderImg),
                    fit: BoxFit.cover
                  ),
                ),
              ),

              /// select type header text
              MyText(
                title: TheText.bookTestTypeTitle,
                fontVariation: FontVariation.weight(600),
                fontSize: screenWidth * 0.052,
                color: MyColors.homeBlueBg,
              ),

              /// test type schedule
              Container(
                width: screenWidth * 0.98,
                height: screenHeight * 1.238,
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
                    /// test details item containers
                    BookLabTestItem(
                      image: MyImages.bookLabTypeImg1,
                      heading: TheText.bookTestTypeDetailsTitle1,
                      subHeading: TheText.bookTestTypeDetailsSubtitle1,
                      duration: TheText.bookTestTypeDetailsDuration1,
                      icon: Icons.access_time_outlined,
                      price: '\$120',
                      height: screenHeight * 0.15,
                    ),
                    SizedBox(height: screenHeight * 0.01,),
                    BookLabTestItem(
                      image: MyImages.bookLabTypeImg2,
                      heading: TheText.bookTestTypeDetailsTitle2,
                      subHeading: TheText.bookTestTypeDetailsSubtitle2,
                      duration: TheText.bookTestTypeDetailsDuration2,
                      price: '\$95',
                      icon: Icons.access_time_outlined,
                      height: screenHeight * 0.18,
                    ),
                    SizedBox(height: screenHeight * 0.01,),
                    BookLabTestItem(
                      image: MyImages.appointmentLabTestImg,
                      heading: TheText.bookTestTypeDetailsTitle3,
                      subHeading: TheText.bookTestTypeDetailsSubtitle3,
                      duration: TheText.bookTestTypeDetailsDuration3,
                      icon: Icons.access_time_outlined,
                      price: '\$70',
                      height: screenHeight * 0.15,
                    ),
                    SizedBox(height: screenHeight * 0.01,),
                    BookLabTestItem(
                      image: MyImages.bookLabTypeImg3,
                      heading: TheText.bookTestTypeDetailsTitle4,
                      subHeading: TheText.bookTestTypeDetailsSubtitle4,
                      duration: TheText.bookTestTypeDetailsDuration4,
                      icon: Icons.access_time_outlined,
                      price: '\$89',
                      height: screenHeight * 0.15,
                    ),

                    /// divider
                    SizedBox(height: screenHeight * 0.01,),
                    Row(
                      children: [
                        Expanded(child: Divider(color: Colors.blue[700], thickness: 0.25)),
                        /// select type header text
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.005),
                          child: MyText(
                            title: TheText.bookTestAppointmentDetails,
                            fontVariation: FontVariation.weight(600),
                            fontSize: screenWidth * 0.049,
                            color: isDark ? MyColors.white : MyColors.homeBlueBg,
                          ),
                        ),
                        Expanded(child: Divider(color: Colors.blue[700],thickness: 0.25)),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01,),



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

                    BookLabLocation(),

                    SizedBox(height: screenHeight * 0.02,),
                    ConfirmLabBookingBtn(info: 'Please ensure to be available at the clinic\'s laboratory on your appointment day.',),

                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01,)
            ],
          ),
        ),
      ),
    );
  }
}
