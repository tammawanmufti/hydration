import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydration/core/constants/decoration/concave_decoration.dart';
import 'package:hydration/core/constants/dimens.dart';
import 'package:hydration/core/themes/extensions.dart';

class TimeInput extends StatefulWidget {
  final TimeOfDay initialTime;
  final ValueChanged<TimeOfDay?> onChanged;
  const TimeInput({Key? key, required this.onChanged, required this.initialTime}) : super(key: key);

  @override
  State<TimeInput> createState() => _TimeInputState();
}

class _TimeInputState extends State<TimeInput> {
  late ValueNotifier<TimeOfDay?> time;

  @override
  void initState() {
    time = ValueNotifier<TimeOfDay?>(widget.initialTime);
    super.initState();
  }

  @override
  void dispose() {
    time.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result = await showTimePicker(
          context: context,
          initialTime: time.value ?? widget.initialTime,
        );
        time.value = result;
        widget.onChanged(result);
      },
      child: Container(
          padding: const EdgeInsets.all(Dimens.tiny),
          decoration: PressedDecoration(
            depression: 3,
            colors: context.sunkenColors,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.atom),
            ),
          ),
          child: ValueListenableBuilder<TimeOfDay?>(
            valueListenable: time,
            builder: (context, value, child) {
              return Text(
                value?.format(context) ?? "--:--",
                style: TextStyle(
                  fontSize: 14,
                  color: context.primaryColor,
                ),
              );
            },
          )),
    );
  }
}
