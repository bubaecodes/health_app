import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/shop/screens/appointment/widgets/appointment_consultation/consult_call_chat_btn.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class ConsultationBody extends StatelessWidget {
  const ConsultationBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.143,
      padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.008,
        horizontal: screenWidth * 0.03
      ),
      decoration: BoxDecoration(
        border: BoxBorder.all(color: MyColors.darkBlue),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(screenWidth * 0.045),
          topRight: Radius.circular(screenWidth * 0.045),
          bottomLeft: Radius.circular(screenWidth * 0.045),
          bottomRight: Radius.circular(screenWidth * 0.045),
        ),
        color: isDark ? MyColors.darkerBlue : Colors.blue[400],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///img
          Container(
            height: screenHeight * 0.075,
            width: screenWidth * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(screenWidth * 0.02),
                topRight: Radius.circular(screenWidth * 0.02),
                bottomRight: Radius.circular(screenWidth * 0.02),
                bottomLeft: Radius.circular(screenWidth * 0.02),
              ),
              color: MyColors.blue,
            ),
            child: Transform.scale(
              scale: 0.9,
              child: Image.asset(MyImages.homeAppointmentMaleDoctor, height: 70,),
            ),
          ),
          SizedBox(width: screenWidth * 0.03,),

          ///doc details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// doc name
              MyText(
                title: 'Dr. Harvey',
                fontVariation: FontVariation.weight(500),
                fontSize: screenWidth * 0.043,
                color: isDark ? MyColors.white : MyColors.darkerBlue,
              ),

              /// specialist
              MyText(
                title: 'Gastroenterologists',
                fontVariation: FontVariation.weight(500),
                fontSize: screenWidth * 0.04,
                color: isDark ? MyColors.white : MyColors.darkerBlue,
              ),

              /// btns
              Row(
                children: [
                  /// call btn
                  ConsultCallChatBtn(
                    backgroundColor: MyColors.lightGreenBg,
                    icon: Icons.phone_rounded,
                    text: 'Call',
                    iconColor: MyColors.darkBlue,
                    textColor: MyColors.darkBlue,
                    onPressed: (){},
                  ),
                  SizedBox(width: screenWidth * 0.028,),

                  /// chat btn
                  ConsultCallChatBtn(
                    backgroundColor: isDark? MyColors.blue : MyColors.darkBlue,
                    icon: Icons.mark_unread_chat_alt,
                    text: 'Chat',
                    onPressed: (){},
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
