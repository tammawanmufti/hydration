import 'package:flutter/material.dart';
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
            onChanged: (value) {},
          ),
        ),
        const SettingItem(
          title: "Time Format",
          action: Text("24 H | 12 H"), //Todo: Create Selection button
        ),
        const SettingItem(
          title: "Unit",
          action: Text("Imperial | Metric"), //Todo: Create Selection button
        )
      ],
    );
  }
}
