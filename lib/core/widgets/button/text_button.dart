import 'package:flutter/material.dart';
import 'package:hydration/core/themes/extensions.dart';
import 'package:hydration/core/widgets/button/base_button.dart';

class NeuTextButton extends StatelessWidget {
  final String label;
  const NeuTextButton({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeuBaseButton(
      onTap: () {},
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          color: context.primaryColor,
        ),
      ),
    );
  }
}
