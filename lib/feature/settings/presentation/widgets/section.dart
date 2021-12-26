import 'package:flutter/material.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/themes/extensions.dart';

class Section extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const Section({
    Key? key,
    required this.title,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: Dimens.medium,
            vertical: Dimens.tiny,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: context.primaryColor!),
              borderRadius: BorderRadius.circular(Dimens.largeTiny)),
          child: Column(
            children: children,
          ),
        ),
        Positioned(
          left: Dimens.extraLarge,
          child: Text(
            ' $title ',
            style: TextStyle(
              color: context.primaryColor,
              backgroundColor: context.backgroundColor,
              fontSize: Dimens.medium,
            ),
          ),
        )
      ],
    );
  }
}
