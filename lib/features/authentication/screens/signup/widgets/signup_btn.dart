import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';

class SignupBtn extends StatelessWidget {
  const SignupBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return ElevatedButton(
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
            horizontal: screenWidth * 0.296,
            vertical: screenHeight * 0.017,
          )),
        ),

        child: MyText(
          title: TheText.signupBtnText,
          fontVariation: FontVariation.weight(600),
          fontSize: screenWidth * 0.047,
          color: MyColors.white,
        )
    );
  }
}
