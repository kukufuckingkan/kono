
import 'dart:developer';


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/repository/chapter_api.dart';

import 'chapter_state.dart';


class ChapterController extends StateNotifier<ChapterState> {
  final Ref ref;

   ChapterController(this.ref) : super(ChapterState.initial());

    Future<dynamic> findAll() async {
    try {
      state = state.copyWith(fetching: true);
      var response = await ref.read(chapterApi).findByOrdinal();
      state = state.copyWith(fetching: false);
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
