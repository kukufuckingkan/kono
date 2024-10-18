// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleResponse _$TitleResponseFromJson(Map<String, dynamic> json) =>
    TitleResponse(
      header: json['header'] as String,
      language: json['language'] as String?,
      text: json['text'] as String,
    );

Map<String, dynamic> _$TitleResponseToJson(TitleResponse instance) =>
    <String, dynamic>{
      'header': instance.header,
      'text': instance.text,
      'language': instance.language,
    };
