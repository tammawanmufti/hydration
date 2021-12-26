
part of 'injector.dart';
class Injector {
  static final GetIt instance = GetIt.instance;

  static Future<void> init() async {
    //?BloC
    instance.registerFactory(() => SplashBloc());
    instance.registerFactory(() => DashboardBloc());

    //*Use Cases

    //*Repository

    //*Datasources
  }
}
