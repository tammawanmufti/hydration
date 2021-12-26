import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydration/core/constants/colors.dart';
import 'package:hydration/core/constants/constants.dart';

export 'extensions.dart';

part 'dark.dart';

class AppThemes {
  static final ThemeData light = theme;
  static final ThemeData dark = _dark;

  static final ThemeData theme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: appbar,
    progressIndicatorTheme: progressIndicatorThemeData,
    scaffoldBackgroundColor: AppColors.background,
  );

  static const AppBarTheme appbar = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    backgroundColor: AppColors.background,
    iconTheme: iconThemeData,
    titleTextStyle: titleTextStyle,
  );

  static const TextStyle titleTextStyle = TextStyle(
    color: AppColors.primary,
    fontSize: Dimens.superMedium,
  );

  static const IconThemeData iconThemeData = IconThemeData(
    color: AppColors.primary,
  );

  static const ProgressIndicatorThemeData progressIndicatorThemeData =
      ProgressIndicatorThemeData(circularTrackColor: AppColors.primary);
}
