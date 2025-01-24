
import 'package:json_annotation/json_annotation.dart';
import 'package:kono/response/base_response.dart';
import 'package:kono/response/column_response.dart';
import 'package:kono/response/row_response.dart';
import 'package:kono/response/title_response.dart';

part 'table_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class TableResponse extends BaseResponse {
  final List<RowResponse> rows;
  final List<ColumnResponse> columns;
  final String name;

 





  TableResponse({
    required this.rows,
    required this.name,
    required this.columns,
    required super.created, required super.modified, required super.sku, required super.version, required super.ordinal
 
  });

  factory TableResponse.fromJson(Map<String, dynamic> json) => _$TableResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TableResponseToJson(this);
}