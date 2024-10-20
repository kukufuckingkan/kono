// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleResponse _$TitleResponseFromJson(Map<String, dynamic> json) =>
    TitleResponse(
      text: json['text'] as String,
      sku: json['sku'] as String,
      created: DateTime.parse(json['created'] as String),
      modified: DateTime.parse(json['modified'] as String),
      version: (json['version'] as num).toInt(),
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$TitleResponseToJson(TitleResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
      'version': instance.version,
      'ordinal': instance.ordinal,
      'text': instance.text,
    };
