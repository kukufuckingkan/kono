// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterResponse _$ChapterResponseFromJson(Map<String, dynamic> json) =>
    ChapterResponse(
      id: json['id'] as String,
      name: json['name'] as String?,
      created: DateTime.parse(json['created'] as String),
      modified: DateTime.parse(json['modified'] as String),
      version: (json['version'] as num).toInt(),
      ordinal: (json['ordinal'] as num?)?.toInt(),
      text: json['text'] as String,
      languages: json['languages'] as String,
      sections:
          (json['sections'] as List<dynamic>).map((e) => e as String).toList(),
      data: json['data'] as String,
      chapters: (json['chapters'] as List<dynamic>)
          .map((e) => ChapterResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] == null
          ? null
          : TitleResponse.fromJson(json['title'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChapterResponseToJson(ChapterResponse instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['created'] = instance.created.toIso8601String();
  val['modified'] = instance.modified.toIso8601String();
  val['version'] = instance.version;
  val['ordinal'] = instance.ordinal;
  val['text'] = instance.text;
  val['data'] = instance.data;
  val['sections'] = instance.sections;
  val['chapters'] = instance.chapters;
  val['languages'] = instance.languages;
  writeNotNull('title', instance.title);
  return val;
}
