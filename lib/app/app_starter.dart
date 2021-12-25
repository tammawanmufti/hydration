import 'package:flutter/material.dart';

import '../app/app.dart';

class AppStarter {
  static Future<void> init() async {
    //Todo: initialize here;
  }

  static Future<void> run() async {
    await init();
    runApp(const App());
  }
}
