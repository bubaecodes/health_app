import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/text_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';
import 'package:health_app/utils/routes/routes.dart';

class ConfirmLabBookingBtn extends StatelessWidget {
  const ConfirmLabBookingBtn({super.key, required this.info});

  final String info;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    //final controller = Get.put(SymptomsQuestionsController());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: (){
            showDialog(
              context: context,
              barrierDismissible: true,
              builder: (context) {
                return GestureDetector(
                  onTap: (){
                    Get.offAllNamed(Routes.bottomNavMenu);
                  },
                  child: AlertDialog(
                    insetPadding: const EdgeInsets.symmetric(horizontal: 40),
                    contentPadding: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: MyColors.lightBlue,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MyText(
                          title: 'Booking Confirmed!',
                          fontVariation: FontVariation.weight(600),
                          fontSize: screenWidth * 0.058,
                          color: MyColors.homeBlueBg,
                        ),
                        Divider(),
                        MyText(
                          title: info,
                          fontVariation: FontVariation.weight(500),
                          fontSize: screenWidth * 0.045,
                          color: MyColors.homeBlueBg,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },

          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(
              const Size(0, 0),
            ),
            backgroundColor: WidgetStatePropertyAll(MyColors.blue),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.035),
                side: BorderSide(color: MyColors.blue),
              ),
            ),
          ),

          child: MyText(
            title: TheText.confirmBookingBtn,
            fontVariation: FontVariation.weight(600),
            fontSize: screenWidth * 0.045,
            color: isDark ? MyColors.white : MyColors.white,
          ),
        ),
      ),
    );
  }
}
