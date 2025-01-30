// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionResponse _$SectionResponseFromJson(Map<String, dynamic> json) =>
    SectionResponse(
      name: json['name'] as String,
      chapters: (json['chapters'] as List<dynamic>)
          .map(
              (e) => SectionChapterResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: (json['created'] as num).toInt(),
      modified: (json['modified'] as num).toInt(),
      version: (json['version'] as num).toInt(),
      sku: json['sku'] as String,
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$SectionResponseToJson(SectionResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'created': instance.created,
      'modified': instance.modified,
      'version': instance.version,
      'ordinal': instance.ordinal,
      'name': instance.name,
      'chapters': instance.chapters,
    };

SectionChapterResponse _$SectionChapterResponseFromJson(
        Map<String, dynamic> json) =>
    SectionChapterResponse(
      name: json['name'] as String?,
      created: (json['created'] as num).toInt(),
      modified: (json['modified'] as num).toInt(),
      version: (json['version'] as num).toInt(),
      sku: json['sku'] as String,
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$SectionChapterResponseToJson(
    SectionChapterResponse instance) {
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

  writeNotNull('name', instance.name);
  return val;
}
