import 'package:hydration/core/localstorage/storage/models/base_entity.dart';

typedef Predicate<T> = bool Function(T item);

abstract class Repository<T extends BaseEntity> {
  Future<List<T>> getAll();
  Future<List<T>> get(Predicate s);
  Future<T> getById(int entityId);
  Future<T> add(T entity);
  Future<void> delete(T entity);
  Future<void> edit(T entity);
}
