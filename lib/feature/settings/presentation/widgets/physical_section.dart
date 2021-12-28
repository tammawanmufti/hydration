import 'package:flutter/material.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/widgets/input/number_input.dart';
import 'package:hydration/core/widgets/input/time_input.dart';
import 'package:hydration/feature/settings/presentation/widgets/section.dart';
import 'package:hydration/feature/settings/presentation/widgets/setting_item.dart';

class PhysicalSection extends StatelessWidget {
  const PhysicalSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Personal',
      children: [
        SettingItem(
          title: 'Weight',
          action: NumberInput(
            width: Dimens.megaLarge,
            value: 75,
            onChanged: (value) {},
          ),
        ),
        SettingItem(
            title: 'Bedtime',
            action: TimeInput(
              onChanged: (value) {

              },
              initialTime: TimeOfDay.now(), //Todo: nullable
            )),
        SettingItem(
            title: 'Wake-up ',
            action: TimeInput(
              onChanged: (value) {},
              initialTime: TimeOfDay.now(), //Todo: nullable
            )),
        // SettingItem(title: 'Wake-up', action: TimeInput()),
      ],
    );
  }
}
