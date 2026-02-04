
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/common/widgets/mytext.dart';
import 'package:health_app/features/shop/screens/appointment/appointment_screen.dart';
import 'package:health_app/features/shop/screens/health_tips/health_tips_screen.dart';
import 'package:health_app/features/shop/screens/home/home_screen.dart';
import 'package:health_app/utils/constants/colors.dart';
import 'package:health_app/utils/constants/sizes.dart';
import 'package:health_app/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavMenu extends StatelessWidget {
  const BottomNavMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isDark = MyHelperFunctions.isDarkMode(context);
    final screenWidth = MyHelperFunctions.screenWidth();
    // return Scaffold(
    //   bottomNavigationBar: Obx(
    //     () => NavigationBar(
    //       height: 65,
    //       elevation: 0,
    //       selectedIndex: controller.selectedIndex.value,
    //       onDestinationSelected: (index) => controller.selectedIndex.value = index,
    //       backgroundColor: isDark ? MyColors.darkerBlue : Colors.white,
    //       indicatorColor: isDark ? MyColors.white.withOpacity(0.1) : Colors.black.withOpacity(0.1),
    //
    //       destinations: const [
    //         NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
    //         NavigationDestination(icon: Icon(Iconsax.calendar), label: 'Appointments'),
    //         NavigationDestination(icon: Icon(Iconsax.heart), label: 'Health Tips'),
    //       ]
    //     ),
    //   ),
    //   body: Obx(() => controller.screens[controller.selectedIndex.value]),
    // );

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: SizedBox(
        height: MySizes.xl * 2,
        child: BottomAppBar(
          elevation: 8,
          color: isDark ? MyColors.darkerBlue : MyColors.white,
          child: Obx(
            () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// First item
              GestureDetector(
                onTap: () => controller.selectedIndex.value = 0,
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      controller.selectedIndex.value == 0 ? Icons.home_filled : Iconsax.home,
                      color: controller.selectedIndex.value == 0 ?
                          ( isDark ? MyColors.white
                          : MyColors.darkBlue) : MyColors.textPrimary
                    ),
                    const SizedBox(height: MySizes.xs),
                    MyText(
                      title: 'Home',
                      color: controller.selectedIndex.value == 0 ?
                          (isDark ? MyColors.white
                          : MyColors.darkBlue) : Colors.grey[600],
                      fontVariation: FontVariation.weight(700),
                      fontSize: controller.selectedIndex.value == 0 ? screenWidth * 0.028 : screenWidth * 0.028
                    ),
                  ],
                ),
              ),

              /// Second item
              GestureDetector(
                onTap: () => controller.selectedIndex.value = 1,
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      controller.selectedIndex.value == 1 ? Icons.calendar_month_rounded : Iconsax.calendar,
                      color: controller.selectedIndex.value == 1 ?
                          ( isDark ? MyColors.white
                          : MyColors.darkBlue) : MyColors.textPrimary
                    ),
                    const SizedBox(height: MySizes.xs),
                    MyText(
                      title: 'Appointments',
                      color: controller.selectedIndex.value == 1 ?
                      (isDark ? MyColors.white
                          : MyColors.darkBlue) : Colors.grey[600],
                      fontVariation: FontVariation.weight(700),
                        fontSize: controller.selectedIndex.value == 1 ? screenWidth * 0.028 : screenWidth * 0.028
                    ),
                  ],
                ),
              ),

              /// Third item
              GestureDetector(
                onTap: () => controller.selectedIndex.value = 2,
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                        controller.selectedIndex.value == 2 ? Icons.favorite_rounded : Iconsax.heart,
                        color: controller.selectedIndex.value == 2 ?
                        ( isDark ? MyColors.white
                            : MyColors.darkBlue) : MyColors.textPrimary
                    ),
                    const SizedBox(height: MySizes.xs),
                    MyText(
                      title: 'Health Tips',
                      color: controller.selectedIndex.value == 2 ?
                      (isDark ? MyColors.white
                          : MyColors.darkBlue) : Colors.grey[600],
                      fontVariation: FontVariation.weight(700),
                      fontSize: controller.selectedIndex.value == 2 ? screenWidth * 0.028 : screenWidth * 0.028
                    ),
                  ],
                ),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController{
  final RxInt selectedIndex = 0.obs;

  final screens =[
    const HomeScreen(),
    const AppointmentScreen(),
    const HealthTipsScreen(),
    //Container(color: Colors.purple),
    //Container(color: Colors.orange),
    //Container(color: Colors.blue),
  ];
}