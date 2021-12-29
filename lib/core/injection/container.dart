part of 'injector.dart';

class Injector {
  static final GetIt instance = GetIt.instance;

  static Future<void> init() async {
    //?BloC
    instance.registerFactory(() => SplashBloc());
    instance.registerFactory(() => DashboardBloc());

    //*Use Cases

    //*Repository
    instance.registerSingletonAsync<SettingsLocalRepository>(
      () async => await SettingsLocalRepository.create(dataSource: Hive),
    );
    instance.registerSingletonAsync<DrinkRecordLocalRepository>(
      () async => await DrinkRecordLocalRepository.create(dataSource: Hive),
    );

    //*Datasources
    instance.registerFactory<DrinkRecordLocalDataSource>(()=> DrinkRecordLocalDataSourceImplementation(
      instance()
    ));

    //* Other
    instance.registerSingleton<LocalStorage>(LocalStorageImplementation(
      drinkRecordRepository: instance(),
      settingsRepository: instance(),
    ));
  }
}
