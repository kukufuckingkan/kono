
import 'package:json_annotation/json_annotation.dart';
import 'package:kono/response/base_response.dart';
import 'package:kono/response/title_response.dart';

part 'row_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class RowResponse {
  final List<String> row;
  





  RowResponse({
    required this.row,
  });

  factory RowResponse.fromJson(Map<String, dynamic> json) => _$RowResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RowResponseToJson(this);
}