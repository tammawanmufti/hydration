import 'package:flutter/material.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/constants/decoration/decoration.dart';
import 'package:hydration/core/themes/extensions.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final Widget action;
  const SettingItem({Key? key, required this.title, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemedDecoration themedDecoration = ThemedDecoration(context);
    return Container(
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.tiny,
          horizontal: Dimens.small,
        ),
        width: double.infinity,
        decoration: themedDecoration.buttonOuterShadow,
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Text(
                title,
                style: TextStyle(
                  color: context.primaryColor,
                  fontSize: Dimens.extraMedium,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(alignment: Alignment.centerRight, child: action),
            )
          ],
        ));
  }
}
