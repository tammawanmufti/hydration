import 'package:flutter/material.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/constants/decoration/concave_decoration.dart';
import 'package:hydration/core/themes/extensions.dart';

class DropDownInput extends StatefulWidget {
  final double? width;
  final String value;

  const DropDownInput({Key? key, this.width, required this.value}) : super(key: key);

  @override
  _NumberInputState createState() => _NumberInputState();
}

class _NumberInputState extends State<DropDownInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimens.extraLarge,
        width: widget.width,
        padding: const EdgeInsets.all(Dimens.tiny),
      decoration: PressedDecoration(
          depression: 3,
          colors: context.sunkenColors,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.atom),
          ),
        ),
        child: DropdownButton<String>(
          iconSize: 0,
          underline: Container(),
          onChanged: (value) {},
          items: List.generate(
            16,
            (index) => DropdownMenuItem(
              value: index.toString(),
              child: Text('$index'),
            ),
          ).toList(),
      ),
    );
  }
}
