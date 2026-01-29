import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/screens/login/login_screen.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/sizes.dart';
import 'package:health_app/utils/constants/text_strings.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [

        ///heading
        MyText(
          title: TheText.forgotPasswordTitle,
          fontVariation: FontVariation.weight(500),
          fontSize: screenWidth * 0.055,
          color: isDark ? MyColors.white : MyColors.darkBlue,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: screenHeight * 0.01),

        /// subheading
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MySizes.lg + 10),
          child: MyText(
            title: TheText.forgotPasswordSubTitle,
            fontVariation: FontVariation.weight(400),
            fontSize: screenWidth * 0.036,
            color: isDark ? MyColors.white : MyColors.darkerBlue,
          ),
        ),

        SizedBox(height: screenHeight * 0.045),

        /// email
        SizedBox(
          height: screenWidth * 0.200,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_sharp, color: MyColors.blue),
              filled: isDark ? true : false,
              fillColor: isDark ? Colors.grey[900] : MyColors.white,
              hintText: 'Email',
              hintStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'Quicksand',
                fontVariations: [FontVariation('wght', 400)],
                color: isDark ? Colors.grey[500] : MyColors.darkBlue,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: MyColors.darkBlue, width: 0.2),
              ),
            ),
          ),
        ),

        /// reset link btn
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(MyColors.blue),
            elevation: WidgetStatePropertyAll(0.5),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: MyColors.blue),
              ),
            ),
            padding: WidgetStateProperty.all(EdgeInsets.symmetric(
              horizontal: screenWidth * 0.24,
              vertical: screenHeight * 0.02,
            )),
          ),

          child: MyText(
            title: TheText.forgotPasswordBtn,
            fontVariation: FontVariation.weight(600),
            fontSize: screenWidth * 0.047,
            color: MyColors.white,
          ),
        ),


        /// back to login
        SizedBox(height: screenHeight * 0.06),
        InkWell(
          onTap: () => Get.to(LoginScreen()),
          child: MyText(
            title: TheText.forgotPasswordFooterText,
            fontVariation: FontVariation.weight(700),
            fontSize: screenWidth * 0.04,
            color: MyColors.blue,
          ),
        ),
      ],
    );
  }
}
