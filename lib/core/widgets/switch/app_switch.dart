import 'package:flutter/material.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/constants/decoration/concave_decoration.dart';
import 'package:hydration/core/themes/extensions.dart';

class AppSwitch extends StatefulWidget {
  final bool value;
  final Function(bool value) onChanged;
  const AppSwitch({
    Key? key,
    required this.onChanged,
    this.value = false,
  }) : super(key: key);

  @override
  _AppSwitchState createState() => _AppSwitchState();
}

class _AppSwitchState extends State<AppSwitch> {
  late bool value;
  late AnimationController controller;
  

  @override
  void initState() {
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          value = !value;
          widget.onChanged(value);
        });
      },
      child: Container(
        height: 20,
        width: 40,
        decoration: PressedDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.extraLarge),
            ),
            depression: 3,
            colors: context.sunkenColors),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 200),
          alignment: !value ? Alignment.centerLeft : Alignment.centerRight,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.switchOnColor,
                boxShadow: value
                    ? [
                        BoxShadow(
                          color: context.switchOnColor,
                          spreadRadius: 0,
                          blurRadius: 3,
                        )
                      ]
                    : []),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: 20,
              width: 20,
              decoration: PressedDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimens.extraLarge),
                  ),
                  colors: const [
                    Colors.black26,
                    Colors.black,
                  ],
                  depression: value ? 0.5 : 6),
            ),
          ),
        ),
      ),
    );
  }
}
