import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:hydration/core/constants/hive/hive_types.dart';
import 'package:hydration/core/localstorage/storage/models/base_entity.dart';

part 'time.g.dart';

@HiveType(typeId: timeAdapter, adapterName: 'TimeAdapter')
class Time extends Equatable implements BaseEntity {
  @override
  @HiveField(0)
  final int id;

  @HiveField(1)
  final int hour;

  @HiveField(2)
  final int minute;

  const Time({
    required this.id,
    required this.hour,
    required this.minute,
  });

  @override
  List<Object?> get props => [
        id,
        hour,
        minute,
      ];
}
