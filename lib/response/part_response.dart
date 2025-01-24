
import 'package:json_annotation/json_annotation.dart';
import 'package:kono/response/base_response.dart';
import 'package:kono/response/title_response.dart';

part 'part_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class PartResponse  {
  int? bookOrdinal;
  int? chapterOrdinal;
  int? sectionOrdinal;
  String? name;
  String format;
  String ? data;
  TableResponse ? table;





  PartResponse({
     this.bookOrdinal,
     this.chapterOrdinal,
     this.sectionOrdinal,
    required this.format,
    required this.name,
    this.data,
    this.table,
  
  });

  factory PartResponse.fromJson(Map<String, dynamic> json) => _$PartResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PartResponseToJson(this);
}


@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class TableResponse extends BaseResponse {
  String? data;
  int? bookOrdinal;
  int? chapterOrdinal;
  int? sectionOrdinal;
  String? name;
  List<RowResponse>? rows;
  List<ColumnResponse> ? columns;

  TableResponse({
     this.data,
     this.bookOrdinal,
     this.chapterOrdinal,
     this.sectionOrdinal,
     this.name,
     this.rows,
     this.columns,
    required super.created, required super.modified, required super.version, required super.sku, required super.ordinal
 
  });

  factory TableResponse.fromJson(Map<String, dynamic> json) => _$TableResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TableResponseToJson(this);
}








@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class RowResponse {
List<String>? row;

  RowResponse({this.row,});

  factory RowResponse.fromJson(Map<String, dynamic> json) => _$RowResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RowResponseToJson(this);
}

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class ColumnResponse {
List<String>? headers;

  ColumnResponse({this.headers,});

  factory ColumnResponse.fromJson(Map<String, dynamic> json) => _$ColumnResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ColumnResponseToJson(this);
}