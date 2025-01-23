
import 'package:json_annotation/json_annotation.dart';
import 'package:kono/response/base_response.dart';
import 'package:kono/response/title_response.dart';

part 'column_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class ColumnResponse {
  final List<String> headers;






  ColumnResponse({
    required this.headers,
  });

  factory ColumnResponse.fromJson(Map<String, dynamic> json) => _$ColumnResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ColumnResponseToJson(this);
}