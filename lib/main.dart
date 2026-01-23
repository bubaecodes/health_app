import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/routes/app_pages.dart';
import 'package:health_app/utils/routes/routes.dart';
import 'package:health_app/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health App',
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      initialRoute: Routes.onboardingScreen,
      getPages: AppPages.pages,
      //home: OnboardingScreen(),
    );
  }
}
