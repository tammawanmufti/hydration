import 'package:flutter/material.dart';
import 'package:hydration/core/themes/extensions.dart';
import 'package:hydration/core/widgets/button/base_button.dart';

class NeuTextButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const NeuTextButton({Key? key, required this.label, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeuBaseButton(
      onTap: onTap,
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
