import 'package:flutter/material.dart';
import 'package:health_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:health_app/features/shop/screens/home/widgets/home_body_widgets/home_body.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: screenWidth,
              height: double.infinity,
              padding: EdgeInsets.only(
                top: screenHeight * 0.027,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(isDark ? MyImages.darkLoginSignupBg : MyImages.lightLoginSignupBg),
                  fit: BoxFit.cover
                ),
              ),
              child: Column(
                children: [
                  HomeAppbar(),
                  Expanded(child: HomeBody())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
