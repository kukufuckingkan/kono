
import 'package:json_annotation/json_annotation.dart';
import 'package:kono/response/base_response.dart';
import 'package:kono/response/part_response.dart';
import 'package:kono/response/title_response.dart';

part 'chapter_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class ChapterResponse extends BaseResponse {
  String? name;
  List<PartResponse>? parts;





  ChapterResponse({
    this.parts,
    this.name,
    required super.created, required super.modified, required super.version, required super.sku, required super.ordinal
 
  });

  factory ChapterResponse.fromJson(Map<String, dynamic> json) => _$ChapterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterResponseToJson(this);
}