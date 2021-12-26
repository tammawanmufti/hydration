import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:hydration/core/injection/container.dart';
import 'package:hydration/feature/splash/presentation/bloc/splash_bloc.dart';
import 'package:hydration/routes/router.dart';

import '../config/app.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => Injector.instance<SplashBloc>()),
      ],
      child: GetMaterialApp(
        title: AppConfig.name,
        getPages: Routes.pages,
        initialRoute: Routes.splashScreen,
      ),
    );
  }
}
