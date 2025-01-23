// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'column_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColumnResponse _$ColumnResponseFromJson(Map<String, dynamic> json) =>
    ColumnResponse(
      headers:
          (json['headers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ColumnResponseToJson(ColumnResponse instance) =>
    <String, dynamic>{
      'headers': instance.headers,
    };
