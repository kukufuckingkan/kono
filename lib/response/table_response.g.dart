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
      columns: (json['columns'] as List<dynamic>)
          .map((e) => ColumnResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: (json['created'] as num).toInt(),
      modified: (json['modified'] as num).toInt(),
      sku: json['sku'] as String,
      version: (json['version'] as num).toInt(),
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$TableResponseToJson(TableResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'created': instance.created,
      'modified': instance.modified,
      'version': instance.version,
      'ordinal': instance.ordinal,
      'rows': instance.rows,
      'columns': instance.columns,
      'name': instance.name,
    };
