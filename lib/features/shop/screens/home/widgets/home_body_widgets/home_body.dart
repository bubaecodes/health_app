import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:health_app/features/shop/screens/home/widgets/home_body_widgets/home_appointment.dart';
import 'package:health_app/features/shop/screens/home/widgets/home_body_widgets/home_article.dart';
import 'package:health_app/features/shop/screens/home/widgets/home_body_widgets/home_article_second_item.dart';
import 'package:health_app/features/shop/screens/home/widgets/home_first_widget.dart';
import 'package:health_app/features/shop/screens/home/widgets/home_second_widget.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';
import 'package:health_app/utils/routes/routes.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final controller = Get.put(SignupController());
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Container(
      height: screenHeight * 0.76,
      width: screenWidth,
      decoration: BoxDecoration(
        color: isDark ? MyColors.homeBlueBg : MyColors.offWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(screenHeight * 0.04),
          topRight: Radius.circular(screenHeight * 0.04),
        )
      ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.04,
              right: screenWidth * 0.04,
              top: screenHeight * 0.027,
              bottom: screenHeight * 0.001,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// first item -- kidney image container
                HomeFirstWidget(),

                SizedBox(height: screenHeight * 0.016,),

                /// symptoms checker and vaccine
                Row(
                  children: [
                    HomeSecondWidget(
                      text: TheText.homeSymptoms,
                      image: MyImages.homeTodoLogo,
                      onTap: (){
                        Get.toNamed(Routes.symptomCheckerScreen);
                      },
                    ),
                    SizedBox(width: screenWidth * 0.03,),
                    HomeSecondWidget(
                      text: TheText.homeVaccine,
                      image: MyImages.homeHealthCareLogo2,
                      onTap: (){
                        controller.openWebsite('https://www.nhs.uk/vaccinations/hepatitis-b-vaccine/');
                      },
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.006,),

                /// upcoming appointments
                MyText(
                  title: TheText.homeAppointmentTitle,
                  fontVariation: FontVariation.weight(600),
                  fontSize: screenWidth * 0.05,
                  color: isDark ? MyColors.white : MyColors.darkerBlue,
                ),
                SizedBox(height: screenHeight * 0.01,),

                //TODO: Make the a list view builder
                HomeAppointment(
                  text: 'Dr. Smith',
                  time: 'Tomorrow, 2:00PM',
                  scale: 0.97,
                  height: 60,
                  image: MyImages.homeAppointmentMaleDoctor,
                ),
                SizedBox(height: screenHeight * 0.016,),
                HomeAppointment(
                  text: 'Dr. Lydia. P',
                  time: '26th March, 2026',
                  scale: 2,
                  height: 70,
                  image: MyImages.homeAppointmentFemaleDoctor,
                ),


                SizedBox(height: screenHeight * 0.016,),

                /// latest article
                MyText(
                  title: TheText.homeArticleTitle,
                  fontVariation: FontVariation.weight(600),
                  fontSize: screenWidth * 0.05,
                  color: isDark ? MyColors.white : MyColors.darkerBlue,
                ),
                SizedBox(height: screenHeight * 0.01,),
                Row(
                  children: [
                    HomeArticle(),
                    SizedBox(width: screenWidth * 0.03,),
                    HomeArticleSecondItem(),
                  ],
                ),
                SizedBox(height: screenHeight * 0.01,),
              ],
            ),
          ),
        )
    );
  }
}
