
import 'package:json_annotation/json_annotation.dart';
import 'package:kono/response/title_response.dart';

part 'chapter_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class ChapterResponse {
  final String id;
  final String ? name;
  final DateTime created;
  final DateTime modified;
  final int version;

  @JsonKey(includeIfNull: true,defaultValue: null,required: false)

  final int ? ordinal;
  final String text;
  final String data;
  final List<String> sections;
  final List<ChapterResponse> chapters;
  final String languages;
  final TitleResponse ? title;




  ChapterResponse({
    required this.id,
    required this.name,
    required this.created,
    required this.modified,
    required this.version,
   required this.ordinal,
   required this.text,
   required this.languages,
   required this.sections,
   required this.data,
   required this.chapters,
   required this.title
  });

  factory ChapterResponse.fromJson(Map<String, dynamic> json) => _$ChapterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterResponseToJson(this);
}