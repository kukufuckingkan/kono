import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

part 'title_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class TitleResponse {
  final String header;
  final String text;
  
  @JsonKey(includeIfNull: true,defaultValue: null,required: false)
  final String ? language;



  TitleResponse({
    required this.header,
    required this.language,
   required this.text
  });

  factory TitleResponse.fromJson(Map<String, dynamic> json) => _$TitleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TitleResponseToJson(this);
}