
import 'package:json_annotation/json_annotation.dart';
import 'package:kono/response/base_response.dart';
import 'package:kono/response/title_response.dart';

part 'book_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class BookResponse extends BaseResponse {

 
  final List<String> ? names;




  BookResponse({
   required this.names, required super.created, required super.modified, required super.version, required super.sku, required super.ordinal
  });

  factory BookResponse.fromJson(Map<String, dynamic> json) => _$BookResponseFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$BookResponseToJson(this);
}