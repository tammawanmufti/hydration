import 'package:flutter/material.dart';
import 'package:hydration/core/constants/colors.dart';
import 'package:hydration/core/constants/constants.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const TopBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.primary,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Dimens.appBarSize;
}
