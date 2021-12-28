import 'package:flutter/material.dart';

import 'select_button_item.dart';

class SelectButtonRow<T> extends StatelessWidget {
  final List<SelectButtonItem<T>> items;
  final T? value;

  const SelectButtonRow({Key? key, required this.items, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items,
    );
  }
}
