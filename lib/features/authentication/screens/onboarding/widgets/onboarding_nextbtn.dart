import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/device/device_utility.dart';

class OnboardingNextBtn extends StatelessWidget {
  const OnboardingNextBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final controller = Get.put(OnboardingController());
    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 10,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 47),
        child: Center(
          child: ElevatedButton(
              //onPressed: () => Get.to(LoginScreen()),
              onPressed: () => controller.nextPage(),
              style: ButtonStyle(
                backgroundColor: isDark
                    ? WidgetStatePropertyAll(MyColors.white)
                    : WidgetStatePropertyAll(MyColors.darkBlue),
                elevation: WidgetStatePropertyAll(1),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: isDark? MyColors.white : MyColors.darkBlue),
                  ),
                ),
                padding: WidgetStateProperty.all(EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 13,
                    bottom: 13
                )),
              ),
              // style: ElevatedButton.styleFrom(
              //   fixedSize: Size(screenWidth * 0.6, 35),
              //   backgroundColor: isDark ? MyColors.white : MyColors.darkBlue,
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              // ),
              child: Obx(
                  () {
                    if (controller.currentPageIndex < 2) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyText(
                            title: 'Next',
                            fontVariation: FontVariation.weight(400),
                            fontSize: 18,
                            color: isDark ? MyColors.darkBlue : MyColors.white,
                          ),
                          SizedBox(width: 90),
                          Icon(
                            Icons.chevron_right_sharp,
                            color: isDark ? MyColors.darkBlue : MyColors.white,
                            size: 25,
                          )
                        ],
                      );
                    } else {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyText(
                            title: 'Get Started',
                            fontVariation: FontVariation.weight(400),
                            fontSize: 18,
                            color: isDark ? MyColors.darkBlue : MyColors.white,
                          ),
                          SizedBox(width: 90),
                          Icon(
                            Icons.chevron_right_sharp,
                            color: isDark ? MyColors.darkBlue : MyColors.white,
                            size: 25,
                          )
                        ],
                      );
                    }
                  }
              )
          ),
        ),
      ),
    );
  }
}
