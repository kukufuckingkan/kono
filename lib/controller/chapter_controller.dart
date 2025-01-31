
import 'dart:developer';


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/database/database_service.dart';
import 'package:kono/response/chapter_response.dart';
import 'package:kono/service/chapter_service.dart';

import 'chapter_state.dart';


class ChapterController extends StateNotifier<ChapterState> {
  final Ref ref;

   ChapterController(this.ref) : super(ChapterState.initial()){
   // findBySku("709a8c50-1d62-4827-8a5f-33b17d9652f1");
   }

  //   Future<dynamic> findAll() async {
  //   try {
  //     state = state.copyWith(fetching: true);
  //     var response = await ref.read(chapterService).findAll();
  //     state = state.copyWith(fetching: false,chapters: response);
  //     //ref.read(databseService).addChapter(response);
  //     return response;
  //   } on Exception catch (e) {
  //      log(e.toString());
  //     state = state.copyWith(fetching: false, error : e.toString());
  //   }
  // }


    Future<dynamic> findBySku(String sku) async {
    try {
      state = state.copyWith(fetching: true);
      var response = await ref.read(chapterService).findBySku(sku);
      List<ChapterResponse> chapters = [];
      chapters.add(response);
      state = state.copyWith(fetching: false,chapters: chapters);
      //ref.read(databseService).addChapter(response);
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
