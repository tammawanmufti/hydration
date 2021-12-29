import 'package:hive/hive.dart';
import 'package:hydration/core/constants/hive/hive_types.dart';
import 'package:hydration/core/localstorage/repository/local_repository.dart';
import 'package:hydration/core/localstorage/storage/models/settings.dart';
import 'package:hydration/core/localstorage/storage/models/time.dart';

class SettingsLocalRepository extends LocalRepository<AppSettings> {
  bool _isInitialized = false;

  SettingsLocalRepository._({required HiveInterface dataSource})
      : super(boxName: AppSettings.boxName, dataSource: dataSource);

  static Future<SettingsLocalRepository> create({required HiveInterface dataSource}) async {
    final repo = SettingsLocalRepository._(
      dataSource: dataSource,
    );
    await repo.init();
    return repo;
  }

  Future<void> init() async {
    bool _isInitializing = false;

    if (_isInitialized == false && _isInitializing == false) {
      _isInitializing = true;
      super.dataSource.registerAdapter(AppSettingsAdapter());
      if (!super.dataSource.isAdapterRegistered(timeAdapter)) {
        super.dataSource.registerAdapter(TimeAdapter());
      }

      _isInitialized = true;
    }
  }
}
