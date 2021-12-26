import 'package:get_it/get_it.dart';
import 'package:hydration/feature/splash/presentation/bloc/splash_bloc.dart';

class Injector {
  static final instance = GetIt.instance;

  static Future<void> init() async {
    //?BloC
    instance.registerFactory(() => SplashBloc());

    //*Use Cases

    //*Repository

    //*Datasources
  }
}
