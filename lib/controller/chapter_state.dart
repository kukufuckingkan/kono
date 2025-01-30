
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kono/response/chapter_response.dart';


part 'chapter_state.freezed.dart';

@freezed
abstract class ChapterState with _$ChapterState{
    factory ChapterState({
    required final bool fetching,
    required final String error,
    required ChapterResponse chapter,
    required List<ChapterResponse> chapters
  }) = _ChapterState;

  factory  ChapterState.initial(){
    return ChapterState(fetching: false, error: '',chapter: ChapterResponse.fromJson({}),chapters: []);
  }
}