import 'package:flutter/material.dart';
import 'package:myapp/ui/_core/app_colors.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.black),
        backgroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return const Color.fromARGB(255, 177, 175, 173);
          } else if (states.contains(WidgetState.pressed)) {
            return const Color.fromARGB(255, 117, 58, 10);
          }

          return AppColors.mainColor;
        }),
      ),
    ),
  );
}
