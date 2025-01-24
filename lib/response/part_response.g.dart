// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartResponse _$PartResponseFromJson(Map<String, dynamic> json) => PartResponse(
      bookOrdinal: (json['bookOrdinal'] as num?)?.toInt(),
      chapterOrdinal: (json['chapterOrdinal'] as num?)?.toInt(),
      sectionOrdinal: (json['sectionOrdinal'] as num?)?.toInt(),
      format: json['format'] as String,
      name: json['name'] as String?,
      data: json['data'] as String?,
      table: json['table'] == null
          ? null
          : TableResponse.fromJson(json['table'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PartResponseToJson(PartResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bookOrdinal', instance.bookOrdinal);
  writeNotNull('chapterOrdinal', instance.chapterOrdinal);
  writeNotNull('sectionOrdinal', instance.sectionOrdinal);
  writeNotNull('name', instance.name);
  val['format'] = instance.format;
  writeNotNull('data', instance.data);
  writeNotNull('table', instance.table);
  return val;
}

TableResponse _$TableResponseFromJson(Map<String, dynamic> json) =>
    TableResponse(
      data: json['data'] as String?,
      bookOrdinal: (json['bookOrdinal'] as num?)?.toInt(),
      chapterOrdinal: (json['chapterOrdinal'] as num?)?.toInt(),
      sectionOrdinal: (json['sectionOrdinal'] as num?)?.toInt(),
      name: json['name'] as String?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => RowResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      columns: (json['columns'] as List<dynamic>?)
          ?.map((e) => ColumnResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: (json['created'] as num).toInt(),
      modified: (json['modified'] as num).toInt(),
      version: (json['version'] as num).toInt(),
      sku: json['sku'] as String,
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$TableResponseToJson(TableResponse instance) {
  final val = <String, dynamic>{
    'sku': instance.sku,
    'created': instance.created,
    'modified': instance.modified,
    'version': instance.version,
    'ordinal': instance.ordinal,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('bookOrdinal', instance.bookOrdinal);
  writeNotNull('chapterOrdinal', instance.chapterOrdinal);
  writeNotNull('sectionOrdinal', instance.sectionOrdinal);
  writeNotNull('name', instance.name);
  writeNotNull('rows', instance.rows);
  writeNotNull('columns', instance.columns);
  return val;
}

RowResponse _$RowResponseFromJson(Map<String, dynamic> json) => RowResponse(
      row: (json['row'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$RowResponseToJson(RowResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('row', instance.row);
  return val;
}

ColumnResponse _$ColumnResponseFromJson(Map<String, dynamic> json) =>
    ColumnResponse(
      headers:
          (json['headers'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ColumnResponseToJson(ColumnResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('headers', instance.headers);
  return val;
}
