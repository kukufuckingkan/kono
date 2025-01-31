
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kono/response/chapter_response.dart';


part 'chapter_state.freezed.dart';

@freezed
abstract class ChapterState with _$ChapterState{
    factory ChapterState({
    required final bool fetching,
    required final String error,
    required List<ChapterResponse> chapters,
    // required ChapterResponse chapter
  }) = _ChapterState;

  factory  ChapterState.initial(){
    return ChapterState(fetching: false, error: '',chapters: []);
  }
}