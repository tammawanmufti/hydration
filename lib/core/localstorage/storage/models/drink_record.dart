import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:hydration/core/constants/hive/hive_types.dart';
import 'package:hydration/core/localstorage/storage/models/base_entity.dart';

@HiveType(typeId: drinkRecord, adapterName: 'drink-record')
class DrinkRecord extends Equatable implements BaseEntity {
  @override
  @HiveField(0)
  final int id;
  @HiveField(1)
  final DateTime drinkAt;
  @HiveField(2)
  final int drinkMl;

  DrinkRecord({
    required this.id,
    required this.drinkAt,
    required this.drinkMl,
  });

  @override
  List<Object> get props => [id, drinkAt, drinkMl];
}
