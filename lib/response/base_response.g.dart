// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      sku: json['sku'] as String,
      created: DateTime.parse(json['created'] as String),
      modified: DateTime.parse(json['modified'] as String),
      version: (json['version'] as num).toInt(),
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
      'version': instance.version,
      'ordinal': instance.ordinal,
    };
