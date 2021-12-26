import 'package:flutter/material.dart';
import 'package:hydration/core/constants/colors.dart';

extension AppThemeExtension on BuildContext {
  Color? dynamicColor({Color? dark, Color? light}) {
    if (Theme.of(this).brightness == Brightness.dark) {
      return dark;
    } else {
      return light;
    }
  }

  Color? get primaryColor {
    return dynamicColor(
      dark: AppColors.background,
      light: AppColors.primary,
    );
  }

  Color? get backgroundColor {
    return dynamicColor(
      light: AppColors.background,
      dark: AppColors.primary,
    );
  }
}
