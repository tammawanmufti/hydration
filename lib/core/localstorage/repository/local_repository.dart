import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydration/core/localstorage/storage/models/base_entity.dart';

typedef Predicate<T> = bool Function(T item);

abstract class LocalRepository<T extends BaseEntity> {
  final HiveInterface dataSource;
  final String boxName;
  late Box box;

  LocalRepository({required this.dataSource, required this.boxName});

  Future<void> open() async {
    box = await dataSource.openBox(boxName);
  }

  Future<void> close() async {
    await box.close();
  }

  Future<T> add(T entity) async {
    await box.add(entity);
    return Future.value(entity);
  }

  Future<void> delete(T entity) async {
    await box.delete(entity.id);
    return;
  }

  Future<void> edit(T entity) async {
    await box.put(entity.id, entity);
    return;
  }

  Future<List<T>> get(Predicate s) async {
    final values = box.values.where(s).cast<T>().toList();
    return values;
  }

  Future<List<T>> getAll() async {
    final values = box.values.toList().cast<T>();
    return values;
  }

  Future<T> getById(int entityId) async {
    final as = await box.getAt(entityId);
    return as;
  }
}
