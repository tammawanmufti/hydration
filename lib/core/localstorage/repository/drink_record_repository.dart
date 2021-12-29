import 'package:hive/hive.dart';
import 'package:hydration/core/localstorage/repository/local_repository.dart';
import 'package:hydration/core/localstorage/storage/models/drink_record.dart';
import 'package:hydration/core/localstorage/storage/models/settings.dart';

class DrinkRecordLocalRepository extends LocalRepository<DrinkRecord> {
  bool _isInitialized = false;

  DrinkRecordLocalRepository._({required HiveInterface dataSource})
      : super(boxName: AppSettings.boxName, dataSource: dataSource);

  static Future<DrinkRecordLocalRepository> create({required HiveInterface dataSource}) async {
    final repo = DrinkRecordLocalRepository._(
      dataSource: dataSource,
    );
    await repo.init();
    return repo;
  }

  Future<void> init() async {
    bool _isInitializing = false;
    if (_isInitialized == false && _isInitializing == false) {
      _isInitializing = true;
      super.dataSource.registerAdapter(DrinkRecordAdapter());
      _isInitialized = true;
    }
  }
}
