
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class BaseResponse {
  final String sku;
  final DateTime created;
  final DateTime modified;
  final int version;
  final int ordinal;





  BaseResponse({
    required this.sku,
    required this.created,
    required this.modified,
    required this.version,
   required this.ordinal,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}