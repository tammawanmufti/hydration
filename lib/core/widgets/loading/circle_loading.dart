import 'package:flutter/material.dart';
import 'package:hydration/core/constants/constants.dart';

class CircleLoading extends StatelessWidget {
  final double size;

  const CircleLoading({Key? key, this.size = Dimens.large}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: const CircularProgressIndicator(
        strokeWidth: 2,
      ),
    );
  }
}
