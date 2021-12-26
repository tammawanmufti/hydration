import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hydration/routes/router.dart';

import '../config/app.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConfig.name,
      getPages: Routes.pages,
      initialRoute: Routes.splashScreen,
    );
  }
}
