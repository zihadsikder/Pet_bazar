import 'package:flutter/material.dart';
class AppTextStyle {
  static TextStyle headerStyle(
      {Color color = Colors.grey, double fontSize = 18}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
    );
  }
    static TextStyle normalTextStyle(
        {Color color = Colors.black, double fontSize = 14}) {
      return TextStyle(
        fontSize: fontSize,
        color: color,
      );
    }
      static TextStyle subHeaderStyle(
          {Color color = Colors.grey, double fontSize = 14}) {
        return TextStyle(
          fontSize: fontSize,
          color: color,
        );
  }
}
