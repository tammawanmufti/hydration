import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydration/app/app_bloc_observer.dart';
import 'package:hydration/core/injection/injector.dart';

import '../app/app.dart';

class AppStarter {
  static Future<void> init() async {
    //?Dependency injection init
    await Injector.init();
    //Todo: initialize here;
  }

  static Future<void> run() async {
    await init();
    BlocOverrides.runZoned(
      () {
        runApp(const App());
      },
      blocObserver: AppBlocObserver(),
    );
  }
}
