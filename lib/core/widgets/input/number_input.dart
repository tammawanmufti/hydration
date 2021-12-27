import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/constants/decoration/concave_decoration.dart';
import 'package:hydration/core/themes/extensions.dart';

class NumberInput extends StatefulWidget {
  final int maxLength;
  final int value;
  final double? width;
  final Function(int value) onChanged;
  const NumberInput({Key? key, required this.onChanged, this.value = 0, this.maxLength = 3, this.width})
      : super(key: key);

  @override
  _NumberInputState createState() => _NumberInputState();
}

class _NumberInputState extends State<NumberInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.value.toString());
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            child: TextField(
              controller: _controller,
              maxLines: 1,
              cursorHeight: 10,
              cursorWidth: 1,
              inputFormatters: [LengthLimitingTextInputFormatter(widget.maxLength)],
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(0),
                isDense: true,
              ),
              style: TextStyle(
                fontSize: 14,
                color: context.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
