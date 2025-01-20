
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kono/response/chapter_response.dart';

import '../response/section_response.dart';


part 'section_state.freezed.dart';

@freezed
abstract class SectionState with _$SectionState{
    factory SectionState({
    required final bool fetching,
    required final String error,
    required List<SectionResponse> sections
  }) = _SectionState;

  factory  SectionState.initial(){
    return SectionState(fetching: false, error: '',sections: []);
  }
}