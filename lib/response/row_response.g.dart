// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RowResponse _$RowResponseFromJson(Map<String, dynamic> json) => RowResponse(
      text: (json['text'] as List<dynamic>).map((e) => e as String).toList(),
      header: json['header'] as bool,
    );

Map<String, dynamic> _$RowResponseToJson(RowResponse instance) =>
    <String, dynamic>{
      'text': instance.text,
      'header': instance.header,
    };
