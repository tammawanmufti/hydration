import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AppColors {
  AppColors._();
  static const Color secondary = Color(0xff0F5E9C);
  static const Color background = Color(0xfff0f0f0);
  static const Color primary = Color(0xff09385D);
}

class Neumorphism {
  Neumorphism._();

  static List<BoxShadow> _outerShadow({
    required Color light,
    required Color dark,
  }) {
    return [
      BoxShadow(
        color: dark,
        offset: const Offset(5.0, 5.0),
        blurRadius: 10.0,
      ),
      BoxShadow(
        color: light,
        offset: const Offset(-5.0, -5.0),
        blurRadius: 10.0,
      ),
    ];
  }

  static List<Color> shadowColorLight = [
    const Color(0xFFFFFFFF),
    const Color(0xFFd9d9d9),
  ];
  static List<Color> shadowColorDark = [
    const Color(0xFF0a406b),
    const Color(0xFF08304f),
  ];

  static List<BoxShadow> outerShadowLight = _outerShadow(
    dark: const Color(0xFFd9d9d9),
    light: const Color(0xFFFFFFFF),
  );
  static List<BoxShadow> outerShadowDark = _outerShadow(
    dark: const Color(0xFF08304f),
    light: const Color(0xFF0a406b),
  );
}
