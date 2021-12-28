import 'package:flutter/material.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/constants/decoration/decoration.dart';
import 'package:hydration/core/themes/extensions.dart';

class SettingItem extends StatelessWidget {
  final String title;

  final Widget action;
  
  ///separate title with action
  final bool separate;
  const SettingItem({
    Key? key,
    this.separate = false,
    required this.title,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemedDecoration themedDecoration = ThemedDecoration(context);
    if (separate) {
      return Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: Dimens.tiny,
                horizontal: Dimens.small,
              ),
              width: double.infinity,
              decoration: themedDecoration.concaveDecoration,
              child: Text(
                title,
                style: TextStyle(
                  color: context.primaryColor,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: Dimens.small,
          ),
          Flexible(child: action,fit: FlexFit.loose,)
          
          // Align(alignment: Alignment.centerRight, child: action)
        ],
      );
    } else {
      return Container(
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.tiny,
          horizontal: Dimens.small,
        ),
        width: double.infinity,
        decoration: themedDecoration.concaveDecoration,
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: context.primaryColor,
                  fontSize: 14,
                ),
              ),
            ),
            Expanded(
              child: Align(alignment: Alignment.centerRight, child: action),
            )
          ],
        ));
    }
  }
}
