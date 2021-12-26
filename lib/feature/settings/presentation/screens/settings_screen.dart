import 'package:flutter/material.dart';
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
          children: const [PhysicalSection()],
        ),
      ),
    );
  }
}
