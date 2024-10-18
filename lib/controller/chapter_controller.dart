
import 'dart:developer';


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/service/chapter_service.dart';

import 'chapter_state.dart';


class ChapterController extends StateNotifier<ChapterState> {
  final Ref ref;

   ChapterController(this.ref) : super(ChapterState.initial());

    Future<dynamic> findAll() async {
    try {
      state = state.copyWith(fetching: true);
      var response = await ref.read(chapterService).findAll();
      state = state.copyWith(fetching: false,chapters: response);
      return response;
    } on Exception catch (e) {
       log(e.toString());
      state = state.copyWith(fetching: false, error : e.toString());
    }
  }
}

final chapterController = StateNotifierProvider<ChapterController, ChapterState>((ref) {
  return ChapterController(ref);
});
