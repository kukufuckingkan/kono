
import 'package:freezed_annotation/freezed_annotation.dart';


part 'chapter_state.freezed.dart';

@freezed
abstract class ChapterState with _$ChapterState{
    factory ChapterState({
    required final bool fetching,
    required final String error,
    required dynamic chapter
  }) = _ChapterState;

  factory  ChapterState.initial(){
    return ChapterState(fetching: false, error: '',chapter: []);
  }
}