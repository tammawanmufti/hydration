import 'package:flutter/material.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/constants/decoration/decoration.dart';

class NeuBaseButton extends StatefulWidget {
  final Widget child;
  final double? height;
  final double? width;
  final bool shrink;
  final Duration duration;
  final VoidCallback onTap;
  const NeuBaseButton({
    Key? key,
    required this.onTap,
    required this.child,
    this.shrink = false,
    this.height,
    this.width = double.infinity,
    this.duration = const Duration(milliseconds: 100),
  }) : super(key: key);

  @override
  State<NeuBaseButton> createState() => _NeuBaseButtonState();
}

class _NeuBaseButtonState extends State<NeuBaseButton> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTapDown: (details) {
          setState(() {
            pressed = true;
          });
        },
        onTapCancel: () {
          setState(() {
            pressed = false;
          });
        },
        onTapUp: (details) {
          widget.onTap();
          setState(() {
            pressed = false;
          });
        },
        child: AnimatedContainer(
            padding: const EdgeInsets.symmetric(
              vertical: Dimens.tiny,
              horizontal: Dimens.small,
            ),
            height: widget.height,
            width: widget.width,
            decoration:
                pressed ? ThemedDecoration(context).flatDecoration : ThemedDecoration(context).concaveDecoration,
            duration: widget.duration,
            child: widget.child));
  }
}
