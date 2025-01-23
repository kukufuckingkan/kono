
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kono/response/book_response.dart';
import 'package:kono/response/table_response.dart';


part 'table_state.freezed.dart';

@freezed
abstract class TableState with _$TableState{
    factory TableState({
    required final bool fetching,
    required final String error,
    required List<TableResponse> tables,
  }) = _TableState;

  factory  TableState.initial(){
    return TableState(fetching: false, error: '',tables: []);
  }
}