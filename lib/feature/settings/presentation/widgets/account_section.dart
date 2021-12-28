import 'package:flutter/material.dart';
import 'package:hydration/core/widgets/button/text_button.dart';
import 'package:hydration/feature/settings/presentation/widgets/section.dart';
import 'package:hydration/feature/settings/presentation/widgets/setting_item.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool login = false;
    return Section(
      title: 'Account',
      children: !login //Todo Session
          ? [
              SettingItem(title: 'Sign in with email', action: Container()),
              SettingItem(title: 'Connect with google', action: Container()),
            ]
          : [
              NeuTextButton(
                label: 'Sign Out',
                onTap: () {
                  print('Sign out !');
                },
              ),
              NeuTextButton(label: 'Delete Account', onTap: () {})
            ],
    );
  }
}
