import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/features/shop/controllers/health_tips/health_tips_controller.dart';
import 'package:health_app/features/shop/screens/health_tips/widgets/health_tips_item.dart';
import 'package:health_app/utils/constants/image_strings.dart';
import 'package:health_app/utils/helpers/helper_function.dart';


class HealthTipsBody extends StatelessWidget {
  const HealthTipsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    final controller = Get.put(HealthTipsController());
    return Expanded(
      child: Container(
        width: screenWidth * 1,
        padding:  EdgeInsets.only(
          right: screenWidth * 0.040,
          left: screenWidth * 0.040,
          top: screenHeight * 0.02,
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
              Obx(
                () => MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.items.length,
                    itemBuilder: (context, index) {
                      //final item = controller.items[index];

                      return HealthTipsItem(
                        item: controller.items[index],
                        index: index,
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
