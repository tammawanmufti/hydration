import 'package:flutter/material.dart';
import 'package:hydration/core/constants/colors.dart';
import 'package:hydration/core/constants/constants.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Dimens.tiny),
      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: const Icon(
        Icons.settings,
        color: AppColors.primary,
      ),
    );
  }
}
