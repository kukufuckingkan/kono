// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionResponse _$SectionResponseFromJson(Map<String, dynamic> json) =>
    SectionResponse(
      title: (json['title'] as List<dynamic>?)
          ?.map((e) => TitleResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: DateTime.parse(json['created'] as String),
      modified: DateTime.parse(json['modified'] as String),
      version: (json['version'] as num).toInt(),
      sku: json['sku'] as String,
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$SectionResponseToJson(SectionResponse instance) {
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
