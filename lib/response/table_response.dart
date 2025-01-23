
import 'package:json_annotation/json_annotation.dart';
import 'package:kono/response/base_response.dart';
import 'package:kono/response/row_response.dart';
import 'package:kono/response/title_response.dart';

part 'table_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class TableResponse  {
  final List<RowResponse> rows;
  final String name;

  final String sku;
  final int version;
  final int ordinal;





  TableResponse({
    required this.rows,
    required this.name,
     required this.version, required this.sku, required this.ordinal
 
  });

  factory TableResponse.fromJson(Map<String, dynamic> json) => _$TableResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TableResponseToJson(this);
}