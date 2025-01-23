// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TableResponse _$TableResponseFromJson(Map<String, dynamic> json) =>
    TableResponse(
      rows: (json['rows'] as List<dynamic>)
          .map((e) => RowResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      version: (json['version'] as num).toInt(),
      sku: json['sku'] as String,
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$TableResponseToJson(TableResponse instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'name': instance.name,
      'sku': instance.sku,
      'version': instance.version,
      'ordinal': instance.ordinal,
    };
