import 'package:flutter/material.dart';
import 'package:hydration/core/injection/container.dart';

import '../app/app.dart';

class AppStarter {
  static Future<void> init() async {
    //?Dependency injection init
    await Injector.init();
    //Todo: initialize here;
  }

  static Future<void> run() async {
    await init();
    runApp(const App());
  }
}
