import 'package:flutter/material.dart';
import 'package:hydration/core/constants/colors.dart';

extension AppThemeExtension on BuildContext {
  T _dynamic<T>({T? dark, T? light}) {
    if (Theme.of(this).brightness == Brightness.dark) {
      return dark!;
    } else {
      return light!;
    }
  }

  Color dynamicColor({Color? dark, Color? light}) {
    return _dynamic<Color>(
      dark: dark,
      light: light,
    );
  }

  Gradient dynamicGradient({Gradient? dark, Gradient? light}) {
    return _dynamic<Gradient>(
      dark: dark,
      light: light,
    );
  }

  List<BoxShadow> dynamicShadow({List<BoxShadow>? dark, List<BoxShadow>? light}) {
    return _dynamic<List<BoxShadow>>(
      dark: dark,
      light: light,
    );
  }

  List<Color> get sunkenColors {
    return _dynamic(
      dark: const [
        Colors.black54,
        Colors.black45,
      ],
      light: const [
        Colors.black26,
        Colors.black12,
      ],
    );
  }

  Color get primaryColor {
    return dynamicColor(
      dark: AppColors.background,
      light: AppColors.primary,
    );
  }

  Color get switchOnColor {
    return dynamicColor(
      dark: Colors.white,
      light: Colors.blue[700],
    );
  }

  Color get backgroundColor {
    return dynamicColor(
      light: AppColors.background,
      dark: AppColors.primary,
    );
  }

  List<BoxShadow> get concaveShadow {
    return dynamicShadow(light: Neumorphism.concaveShadowLight, dark: Neumorphism.concaveShadowDark);
  }

  List<Color> get pressedColor {
    return _dynamic<List<Color>>(
      dark: Neumorphism.pressedShadowDark,
      light: Neumorphism.pressedShadowLight,
    );
  }

  List<BoxShadow> get flatShadow {
    return dynamicShadow(
      light: Neumorphism.flatShadowLight,
      dark: Neumorphism.flatShadowDark,
    );
  }
}
