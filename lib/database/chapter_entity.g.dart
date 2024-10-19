// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChapterEntityAdapter extends TypeAdapter<ChapterEntity> {
  @override
  final int typeId = 1;

  @override
  ChapterEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChapterEntity(
      name: fields[3] as String,
      ordinal: fields[2] as int,
      id: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ChapterEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.ordinal)
      ..writeByte(3)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChapterEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
