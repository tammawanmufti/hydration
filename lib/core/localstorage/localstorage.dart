import 'package:hydration/core/localstorage/repository/local_repository.dart';

abstract class LocalStorage {
  LocalRepository get settings;
  LocalRepository get drinkRecords;
  clear();
  open();
  close();
}
