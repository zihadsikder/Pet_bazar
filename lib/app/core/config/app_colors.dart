import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color(0xfff4f3f3);
  static Color bgColor = const Color(0xffffffff);
  static Gradient appGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.topRight,
    colors: [Color(0xff86b560), Color(0xff336f4a)],
  );
  static Color secondaryColor = const Color(0xff518852);
  static Color textColor = const Color(0xffff9197);
  static Color grideViewBgColor = const Color(0xfffdfdfd);
  static Color textFieldOutlineColor = const Color(0xfff4f3f3);
  static Color hintTextColor = const Color(0xffada9a9);
  static Color iconColor = Colors.grey.shade300;

}