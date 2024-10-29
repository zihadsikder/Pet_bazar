import 'package:flutter/material.dart';

import '../config/app_colors.dart';
import '../config/app_text_style.dart';

class AppThemeData {
  static ThemeData lightThemeData = ThemeData(
     primaryColor: const Color(0xfff4f3f3),
     primarySwatch: Colors.grey,

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: AppTextStyle.headerStyle(),
    ),

    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.hintTextColor),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.hintTextColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.hintTextColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.hintTextColor,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //padding: const EdgeInsets.symmetric(horizontal: 20),
        textStyle: AppTextStyle.headerStyle(color: AppColors.bgColor),
      ),
    ),
  );
}