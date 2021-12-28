import 'package:hydration/core/localstorage/repository/repository.dart';

abstract class LocalStorage {
  Repository get settings;
  Repository get drinkRecords;
  clear();
  open();
  close();
}
