// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppSettingsAdapter extends TypeAdapter<AppSettings> {
  @override
  final int typeId = 0;

  @override
  AppSettings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppSettings(
      id: fields[0] as int,
      weight: fields[1] as int,
      bedtime: fields[2] as Time,
      wakeup: fields[3] as Time,
      target: fields[4] as int,
      measureUnit: fields[6] as int,
      syncCloud: fields[5] as bool,
      theme: fields[7] as int,
      drinkMeasureSet: (fields[8] as List).cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, AppSettings obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.weight)
      ..writeByte(2)
      ..write(obj.bedtime)
      ..writeByte(3)
      ..write(obj.wakeup)
      ..writeByte(4)
      ..write(obj.target)
      ..writeByte(5)
      ..write(obj.syncCloud)
      ..writeByte(6)
      ..write(obj.measureUnit)
      ..writeByte(7)
      ..write(obj.theme)
      ..writeByte(8)
      ..write(obj.drinkMeasureSet);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
