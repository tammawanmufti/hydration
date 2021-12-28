import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:hydration/core/constants/hive/hive_types.dart';
import 'package:hydration/core/localstorage/storage/models/base_entity.dart';

import 'time.dart';

@HiveType(typeId: settings, adapterName: 'Settings')
class AppSettings extends Equatable implements BaseEntity {
  @override
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int weight;
  @HiveField(2)
  final Time bedtime;
  @HiveField(3)
  final Time wakeup;
  @HiveField(4)
  final int target;
  @HiveField(5)
  final bool syncCloud;
  @HiveField(6)
  final int measureUnit;
  @HiveField(7)
  final int theme;
  @HiveField(8)
  final List<int> drinkMeasureSet;

  AppSettings({
    required this.id,
    required this.weight,
    required this.bedtime,
    required this.wakeup,
    required this.target,
    required this.measureUnit,
    required this.syncCloud,
    required this.theme,
    required this.drinkMeasureSet,
  });

  @override
  List<Object> get props => [
        id,
        weight,
        bedtime,
        wakeup,
        target,
        measureUnit,
        syncCloud,
        theme,
        drinkMeasureSet,
      ];
}
