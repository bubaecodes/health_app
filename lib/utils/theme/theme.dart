import 'package:flutter/material.dart';
import 'package:health_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:health_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:health_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:health_app/utils/theme/custom_themes/text_theme.dart';

class MyAppTheme {
  MyAppTheme._();


  ///Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Quicksand",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MyTextTheme.lightTextTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    //outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButton,
    //inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,

  );

  ///Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Quicksand",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MyTextTheme.darkTextTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    //outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButton,
    //inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme,
  );
}