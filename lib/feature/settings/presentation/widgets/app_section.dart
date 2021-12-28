import 'package:flutter/material.dart';
import 'package:hydration/core/constants/enums/setting_enum.dart';
import 'package:hydration/core/widgets/button/select_button/select_button_item.dart';
import 'package:hydration/core/widgets/switch/app_switch.dart';
import 'package:hydration/feature/settings/presentation/widgets/section.dart';
import 'package:hydration/feature/settings/presentation/widgets/setting_item.dart';

class AppSection extends StatelessWidget {
  const AppSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'App Settings ',
      children: [
        SettingItem(
          title: 'Sync',
          action: AppSwitch(
            value: true,
            onChanged: (value) {},
          ),
        ),
        SettingItem(
          title: "Time Format",
          separate: true,
          action: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: ['12 Hour', '24 Hour']
                  .map<SelectButtonItem>((e) => SelectButtonItem(
                        label: e,
                        value: e,
                        selected: true,
                      ))
                  .toList()),
        ),
        SettingItem(
          title: "Unit",
          separate: true,
          action: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: MeasureUnit.values
                  .map<SelectButtonItem<int>>(
                    (e) => SelectButtonItem<int>(
                      label: e.name.substring(0, 1).toUpperCase() + e.name.substring(1),
                      value: e.index,
                      selected: true,
                    ),
                  )
                  .toList()), //Todo: Create Selection button
        )
      ],
    );
  }
}
