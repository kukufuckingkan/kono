
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kono/response/book_response.dart';


part 'book_state.freezed.dart';

@freezed
abstract class BookState with _$BookState{
    factory BookState({
    required final bool fetching,
    required final String error,
    required List<BookResponse> books
  }) = _BookState;

  factory  BookState.initial(){
    return BookState(fetching: false, error: '',books: []);
  }
}