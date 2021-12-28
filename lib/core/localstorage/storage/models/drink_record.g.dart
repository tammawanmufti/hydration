// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DrinkRecordAdapter extends TypeAdapter<DrinkRecord> {
  @override
  final int typeId = 2;

  @override
  DrinkRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DrinkRecord(
      id: fields[0] as int,
      drinkAt: fields[1] as DateTime,
      drinkMl: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, DrinkRecord obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.drinkAt)
      ..writeByte(2)
      ..write(obj.drinkMl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrinkRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
