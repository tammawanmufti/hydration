import 'package:flutter/material.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/constants/decoration/concave_decoration.dart';
import 'package:hydration/core/themes/extensions.dart';

/// need label or child
class SelectButtonItem<T> extends StatelessWidget {
  final T value;
  final bool selected;
  final String? label;
  final ValueChanged? onTap;
  final Widget? child;
  SelectButtonItem({
    Key? key,
    required this.value,
    this.selected = false,
    this.label,
    this.onTap,
    this.child,
  }) : super(key: key) {
    if (label == null && child == null) {
      throw 'SelectButtonItem should have label or child';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.atom),
        child: GestureDetector(
          onTap: () {
            if (onTap != null) {
              onTap!(value);
            }
          },
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.extraLarge),
                  color: selected ? (context.primaryColor).withOpacity(0.8) : context.backgroundColor,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: Dimens.tiny,
                    horizontal: Dimens.small,
                  ),
                  decoration: selected
                      ? PressedDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Dimens.extraLarge),
                          ),
                          depression: 5,
                          colors: context.pressedColor,
                        )
                      : BoxDecoration(
                          color: context.backgroundColor,
                          borderRadius: BorderRadius.circular(Dimens.extraLarge),
                          boxShadow: context.concaveShadow,
                        ),
                  // selected ? ThemedDecoration(context).flatDecoration : ThemedDecoration(context).concaveDecoration,
                  // duration: duration,
                  child: Text(label ?? '', style: style(context).copyWith(fontSize: 10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle style(BuildContext context) {
    return selected ? selectedStyle(context) : unselectedStyle(context);
  }

  TextStyle selectedStyle(BuildContext context) {
    return TextStyle(color: context.backgroundColor, shadows: const [
      Shadow(color: Colors.white, blurRadius: 3),
      Shadow(color: Colors.white, blurRadius: 5),
    ]);
  }

  TextStyle unselectedStyle(BuildContext context) {
    return TextStyle(color: context.primaryColor.withOpacity(.5));
  }
}
