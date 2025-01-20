
import 'dart:developer';


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/controller/section_state.dart';

import '../response/section_response.dart';
import '../service/section_service.dart';


class SectionController extends StateNotifier<SectionState> {
  final Ref ref;


   SectionController(this.ref) : super(SectionState.initial());

    Future<List<SectionResponse>> findAllByBookSku(String bookSku) async {
    try {
      state = state.copyWith(fetching: true);
      var response = await ref.read(sectionService).findAllByBookSku(bookSku);
      state = state.copyWith(fetching: false,sections: response);
      //ref.read(databseService).addChapter(response);
      return response;
    } on Exception catch (e) {
       log(e.toString());
      state = state.copyWith(fetching: false, error : e.toString());
      throw e;
    }
  }
}

final sectionController = StateNotifierProvider<SectionController, SectionState>((ref) {
  return SectionController(ref);
});
