
import 'package:json_annotation/json_annotation.dart';
import 'package:kono/response/base_response.dart';
import 'package:kono/response/title_response.dart';

part 'section_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class SectionResponse extends BaseResponse {

 
  final List<TitleResponse> ? title;

  SectionResponse({
   required this.title, required super.created, required super.modified, required super.version, required super.sku, required super.ordinal
  });

  factory SectionResponse.fromJson(Map<String, dynamic> json) => _$SectionResponseFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SectionResponseToJson(this);
}