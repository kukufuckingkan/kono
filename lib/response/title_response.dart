import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:kono/response/base_response.dart';

part 'title_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class TitleResponse extends BaseResponse  {

  final String text;
 

  TitleResponse({
   required this.text, required super.sku, required super.created, required super.modified, required super.version, required super.ordinal
  });

  factory TitleResponse.fromJson(Map<String, dynamic> json) => _$TitleResponseFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TitleResponseToJson(this);
}