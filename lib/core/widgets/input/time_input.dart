import 'package:flutter/material.dart';
import 'package:hydration/core/widgets/input/dropdown_input.dart';

class TimeInput extends StatefulWidget {
  const TimeInput({Key? key}) : super(key: key);

  @override
  State<TimeInput> createState() => _TimeInputState();
}

class _TimeInputState extends State<TimeInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          DropDownInput(width: 35),
          Text(" : "),
          DropDownInput(width: 35),
        ],
      ),
    );
  }
}
