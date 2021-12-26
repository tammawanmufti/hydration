part of 'themes.dart';

final ThemeData _dark = AppThemes.theme.copyWith(
  brightness: Brightness.dark,
  appBarTheme: AppThemes.appbar.copyWith(
    backgroundColor: AppColors.primary,
    titleTextStyle: AppThemes.titleTextStyle.copyWith(
      color: AppColors.background,
    ),
    iconTheme: AppThemes.iconThemeData.copyWith(color: AppColors.background),
  ),
  progressIndicatorTheme: AppThemes.progressIndicatorThemeData.copyWith(circularTrackColor: AppColors.background),
  scaffoldBackgroundColor: AppColors.primary,
);
