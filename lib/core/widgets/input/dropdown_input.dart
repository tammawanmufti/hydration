import 'package:flutter/material.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/constants/decoration/concave_decoration.dart';
import 'package:hydration/core/themes/extensions.dart';

class DropDownInput extends StatefulWidget {
  final double? width;
  const DropDownInput({Key? key, this.width}) : super(key: key);

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
      decoration: ConceaveDecoration(
        depression: 3,
        colors: context.sunkenColors,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.atom),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
              child: Text(
            '00',
            style: TextStyle(
              fontSize: 14,
              color: context.primaryColor,
            ),
          )),
        ],
      ),
    );
  }
}
