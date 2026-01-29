import 'package:flutter/material.dart';
import 'package:health_app/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class MenuCartIcon extends StatelessWidget {
  const MenuCartIcon({
    super.key,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
    //this.onPressed,
  });

  final Color? iconColor, counterBgColor, counterTextColor;
  //final VoidCallbackAction? onPressed;

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(CartController());

    final screenWidth = MyHelperFunctions.screenWidth();
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          //onPressed: BorderRadius.only,
          onPressed: () {},
          icon: Icon(
            Iconsax.notification,
            color: iconColor,
            size: screenWidth * 0.075,
          ),
        ),
        Positioned(
          right: 5,
          top: 4,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor ?? (isDark ? Colors.redAccent[400] : Colors.blueAccent[400]),
              //color: counterBgColor ?? Colors.redAccent[400],
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              // child: Obx(
              //       () => Text(
              //     controller.noOfCartItems.value.toString(),
              //     style: Theme.of(context)
              //         .textTheme
              //         .labelLarge!
              //         .apply(color: isDark ? Colors.white : Colors.black, fontSizeFactor: 0.8),
              //   ),
              // ),
              child: Text(
                //controller.noOfCartItems.value.toString(),
                '1',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.white, fontSizeFactor: 0.85),
              ),
            ),
          ),
        ),
      ],
    );
  }
}