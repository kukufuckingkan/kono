// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RowResponse _$RowResponseFromJson(Map<String, dynamic> json) => RowResponse(
      row: (json['row'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$RowResponseToJson(RowResponse instance) =>
    <String, dynamic>{
      'row': instance.row,
    };
