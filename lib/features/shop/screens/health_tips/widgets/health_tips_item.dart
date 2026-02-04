// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:health_app/common/widgets/mytext.dart';
// import 'package:health_app/features/shop/controllers/health_tips/health_tips_controller.dart';
// import 'package:health_app/utils/constants/colors.dart';
// import 'package:health_app/utils/constants/image_strings.dart';
// import 'package:health_app/utils/helpers/helper_function.dart';
//
// class HealthTipsItem extends StatelessWidget {
//   const HealthTipsItem({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MyHelperFunctions.screenWidth();
//     final screenHeight = MyHelperFunctions.screenHeight();
//     final isDark = MyHelperFunctions.isDarkMode(context);
//     final controller = Get.put(HealthTipsController());
//     return Obx(
//       () => MediaQuery.removePadding(
//         context: context,
//         removeTop: true,
//         child: ListView.builder(
//           physics: NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           itemCount: controller.items.length,
//           itemBuilder: (context, index) {
//             final item = controller.items[index];
//
//             return InkWell(
//               onTap: (){},
//               child: Padding(
//                 padding: EdgeInsets.only(
//                   bottom: screenHeight * 0.014,
//                 ),
//                 child: Container(
//                   width: screenHeight * 0.9,
//                   height: screenHeight * 0.1,
//                   padding:  EdgeInsets.only(
//                     right: screenWidth * 0.020,
//                     left: screenWidth * 0.020,
//                     top: screenHeight * 0.012,
//                     bottom: screenHeight * 0.015,
//                   ),
//                   decoration: BoxDecoration(
//                     border: BoxBorder.all(color: MyColors.darkBlue),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(screenWidth * 0.07),
//                       topRight: Radius.circular(screenWidth * 0.005),
//                       bottomRight: Radius.circular(screenWidth * 0.07),
//                       bottomLeft: Radius.circular(screenWidth * 0.005),
//                     ),
//                     color: isDark ? MyColors.darkerBlue : MyColors.blue,
//                   ),
//                   child: ListTile(
//                     leading: Container(
//                       width: screenWidth * 0.15,
//                       height: screenHeight * 0.15,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(50)),
//                         color: Colors.white,
//                       ),
//                       child: Transform.scale(
//                         scale: 0.77,
//                         child: Image.asset(
//                           //MyImages.homeHealthCareLogo1,
//                           item.image,
//                         ),
//                       ),
//                     ),
//                     title: MyText(
//                       title: item.text,
//                       fontVariation: FontVariation.weight(500),
//                       fontSize: screenWidth * 0.042,
//                       color: MyColors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/shop/controllers/health_tips/health_tips_controller.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/helpers/helper_function.dart';

class HealthTipsItem extends StatelessWidget {
  const HealthTipsItem({super.key, this.item, required this.index});

  final dynamic item;
  final int index;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MyHelperFunctions.screenWidth();
    final screenHeight = MyHelperFunctions.screenHeight();
    final isDark = MyHelperFunctions.isDarkMode(context);
    final controller = Get.put(HealthTipsController());
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: -1.0, end: 0.0),
      duration: Duration(milliseconds: 700 + (index * 700)),
      curve: Curves.easeOutCubic,
      //curve: Curves.elasticOut,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(value * screenWidth, 0),
          child: child,
        );
      },
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: EdgeInsets.only(
            bottom: screenHeight * 0.014,
          ),
          child: Container(
            width: screenHeight * 0.9,
            height: screenHeight * 0.1,
            padding:  EdgeInsets.only(
              right: screenWidth * 0.020,
              left: screenWidth * 0.020,
              top: screenHeight * 0.012,
              bottom: screenHeight * 0.015,
            ),
            decoration: BoxDecoration(
              border: BoxBorder.all(color: MyColors.darkBlue),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(screenWidth * 0.07),
                topRight: Radius.circular(screenWidth * 0.005),
                bottomRight: Radius.circular(screenWidth * 0.07),
                bottomLeft: Radius.circular(screenWidth * 0.005),
              ),
              color: isDark ? MyColors.darkerBlue : MyColors.blue,
            ),
            child: ListTile(
              leading: Container(
                width: screenWidth * 0.15,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Transform.scale(
                  scale: 0.77,
                  child: Image.asset(
                    item.image,
                  ),
                ),
              ),
              title: MyText(
                title: item.text,
                fontVariation: FontVariation.weight(500),
                fontSize: screenWidth * 0.042,
                color: MyColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
