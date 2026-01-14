import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/features/authentication/screens/splash/splash_screen.dart';
import 'package:health_app/utils/theme/custom_themes/text_theme.dart';
import 'package:health_app/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GetMaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      // ),
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: Text('data', style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}
