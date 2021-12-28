import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:hydration/core/constants/hive/hive_types.dart';
import 'package:hydration/core/localstorage/storage/models/base_entity.dart';

part 'drink_record.g.dart';

@HiveType(typeId: drinkRecordAdapter, adapterName: 'DrinkRecordAdapter')
class DrinkRecord extends Equatable implements BaseEntity {
  static const String boxName = 'drinkRecord';

  @override
  @HiveField(0)
  final int id;

  @HiveField(1)
  final DateTime drinkAt;

  @HiveField(2)
  final int drinkMl;

  const DrinkRecord({
    required this.id,
    required this.drinkAt,
    required this.drinkMl,
  });

  @override
  List<Object> get props => [id, drinkAt, drinkMl];
}
