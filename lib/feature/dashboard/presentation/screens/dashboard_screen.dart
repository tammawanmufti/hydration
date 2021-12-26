import 'package:flutter/material.dart';
import 'package:hydration/feature/dashboard/presentation/widgets/dashboard_interface.dart';
import 'package:hydration/feature/dashboard/presentation/widgets/percentage.dart';
import 'package:hydration/feature/dashboard/presentation/widgets/settings_button.dart';
import 'package:hydration/feature/dashboard/presentation/widgets/water_fill.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: const [
              WaterFill(),
              DashboardHydrationPercentage(),
              DashboardInterface(),
              SafeArea(
                child: Align(
                  alignment: Alignment.topRight,
                  child: SettingButton(),
                ),
              )
            ],
          ),
        ));
  }
}
