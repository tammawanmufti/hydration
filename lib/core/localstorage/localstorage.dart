import 'package:hydration/core/localstorage/repository/drink_record_repository.dart';
import 'package:hydration/core/localstorage/repository/local_repository.dart';
import 'package:hydration/core/localstorage/repository/settings_repository.dart';

abstract class LocalStorage {
  LocalRepository get settings;
  LocalRepository get drinkRecords;
  clear();
  open();
  close();
}

class LocalStorageImplementation implements LocalStorage {
  final SettingsLocalRepository settingsRepository;
  final DrinkRecordLocalRepository drinkRecordRepository;

  LocalStorageImplementation({
    required this.drinkRecordRepository,
    required this.settingsRepository,
  });

  @override
  clear() async {
    final se = await settings.getAll();
    for (final e in se) {
      settings.delete(e);
    }
    final dr = await drinkRecords.getAll();
    for (final e in dr) {
      drinkRecords.delete(e);
    }
  }

  @override
  close() async {
    await settings.close();
    await drinkRecords.close();
  }

  @override
  open() async {
    await settings.open();
    await drinkRecords.open();
  }

  @override
  SettingsLocalRepository get settings => settingsRepository;

  @override
  DrinkRecordLocalRepository get drinkRecords => drinkRecordRepository;
}
