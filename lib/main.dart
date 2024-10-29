import 'package:flutter/material.dart';
import 'package:flutter_game/app/core/config/binding.dart';
import 'package:flutter_game/app/core/constants/theme_data.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PetsBazar",
      initialBinding: IntBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: AppThemeData.lightThemeData,
      themeMode: ThemeMode.system,
    ),
  );
}
