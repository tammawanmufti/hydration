import 'package:flutter/material.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/themes/extensions.dart';
import 'package:hydration/feature/settings/presentation/widgets/account_section.dart';
import 'package:hydration/feature/settings/presentation/widgets/app_section.dart';
import 'package:hydration/feature/settings/presentation/widgets/physical_section.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PhysicalSection(),
            const AppSection(),
            const AccountSection(),
            Text(
              'Version : 0.0.1', //Todo : Version
              style: TextStyle(
                color: context.primaryColor.withOpacity(.6),
                backgroundColor: context.backgroundColor,
                fontSize: Dimens.small,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
