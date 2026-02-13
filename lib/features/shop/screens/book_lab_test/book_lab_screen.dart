import 'package:flutter/material.dart';
import 'package:health_app/features/shop/screens/book_lab_test/widgets/book_lab_appbar.dart';
import 'package:health_app/features/shop/screens/book_lab_test/widgets/book_lab_body.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class BookLabScreen extends StatelessWidget {
  const BookLabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.only(
              top: screenHeight * 0.027,
              //bottom: screenHeight * 0.02,
            ),
            decoration: BoxDecoration(
                color: isDark ? MyColors.darkerBlue : MyColors.blue
            ),
            child: Column(
              children: [
                BookLabAppbar(),
                BookLabBody(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
