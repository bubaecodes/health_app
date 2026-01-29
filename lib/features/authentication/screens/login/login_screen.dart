import 'package:flutter/material.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/screens/login/widgets/login_footer.dart';
import 'package:health_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.07,
              vertical: screenHeight * 0.07,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(isDark ? MyImages.darkLoginSignupBg : MyImages.lightLoginSignupBg),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: [
                /// header logo
                // Transform.scale(
                //     scale: 1.3,
                //     child: Image.asset(MyImages.loginSignupHeaderLogo)
                // ),
                Transform.scale(
                    scale: 1.3,
                    child: Image.asset(MyImages.loginSignupHeaderLogo, height: 160,)
                ),

                /// heading texts
                MyText(
                  title: TheText.loginTitle,
                  fontVariation: FontVariation.weight(600),
                  fontSize: screenWidth * 0.075,
                  color: isDark ? MyColors.white : MyColors.darkerBlue,
                ),

                /// subheading texts
                MyText(
                  title: TheText.loginSubTitle,
                  fontVariation: FontVariation.weight(400),
                  fontSize: screenWidth * 0.04,
                  color: isDark ? MyColors.white : MyColors.darkerBlue,
                ),
                SizedBox(height: screenHeight * 0.06),

                /// form
                LoginForm()
              ],
            ),
          ),

          LoginFooter()
        ],
      ),
    );
  }
}
