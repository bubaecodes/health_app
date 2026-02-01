import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/shop/screens/appointment/widgets/appointment_consultation/consultation_body.dart';
import 'package:health_app/features/shop/screens/appointment/widgets/appointment_consultation/physical_consultation_btn.dart';
import 'package:health_app/features/shop/screens/appointment/widgets/appointment_lab/appointment_lab.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class AppointmentBody extends StatelessWidget {
  const AppointmentBody({super.key});

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
          top: screenHeight * 0.012,
          bottom: screenHeight * 0.015,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(isDark ? MyImages.darkLoginSignupBg : MyImages.lightLoginSignupBg),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// lab test heading text
              MyText(
                title: TheText.appointmentLabHeader,
                fontVariation: FontVariation.weight(600),
                fontSize: screenWidth * 0.05,
                color: isDark ? MyColors.white : MyColors.darkerBlue,
              ),
              SizedBox(height: screenHeight * 0.008,),

              /// lab test container
              AppointmentTest(),
              SizedBox(height: screenHeight * 0.02,),

              /// doc consultation heading text
              MyText(
                title: TheText.appointmentDocConsultationHeader,
                fontVariation: FontVariation.weight(600),
                fontSize: screenWidth * 0.05,
                color: isDark ? MyColors.white : MyColors.darkerBlue,
              ),
              SizedBox(height: screenHeight * 0.008,),

              /// available doctors
              MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.005),
                      child: ConsultationBody(),
                    );
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.008,),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'OR',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              SizedBox(height: screenHeight * 0.008,),
              PhysicalConsultationBtn()
            ],
          ),
        ),
      ),
    );
  }
}
