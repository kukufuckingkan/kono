// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookResponse _$BookResponseFromJson(Map<String, dynamic> json) => BookResponse(
      names:
          (json['names'] as List<dynamic>?)?.map((e) => e as String).toList(),
      created: (json['created'] as num).toInt(),
      modified: (json['modified'] as num).toInt(),
      version: (json['version'] as num).toInt(),
      sku: json['sku'] as String,
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$BookResponseToJson(BookResponse instance) {
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

  writeNotNull('names', instance.names);
  return val;
}
