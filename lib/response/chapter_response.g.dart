// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterResponse _$ChapterResponseFromJson(Map<String, dynamic> json) =>
    ChapterResponse(
      parts: (json['parts'] as List<dynamic>?)
          ?.map((e) => PartResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      sectionSku: json['sectionSku'] as String?,
      created: (json['created'] as num).toInt(),
      modified: (json['modified'] as num).toInt(),
      version: (json['version'] as num).toInt(),
      sku: json['sku'] as String,
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$ChapterResponseToJson(ChapterResponse instance) {
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
  writeNotNull('parts', instance.parts);
  writeNotNull('sectionSku', instance.sectionSku);
  return val;
}
