// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookResponse _$BookResponseFromJson(Map<String, dynamic> json) => BookResponse(
      title: (json['title'] as List<dynamic>?)
          ?.map((e) => TitleResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: DateTime.parse(json['created'] as String),
      modified: DateTime.parse(json['modified'] as String),
      version: (json['version'] as num).toInt(),
      sku: json['sku'] as String,
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$BookResponseToJson(BookResponse instance) {
  final val = <String, dynamic>{
    'sku': instance.sku,
    'created': instance.created.toIso8601String(),
    'modified': instance.modified.toIso8601String(),
    'version': instance.version,
    'ordinal': instance.ordinal,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  return val;
}
