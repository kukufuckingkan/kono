
import 'dart:developer';


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/controller/table_state.dart';
import 'package:kono/database/database_service.dart';
import 'package:kono/service/chapter_service.dart';
import 'package:kono/service/table_service.dart';


class TableController extends StateNotifier<TableState> {
  final Ref ref;

   TableController(this.ref) : super(TableState.initial()){
       // Future.microtask(() => findAll());
   }

    Future<dynamic> findAll() async {
    try {
      state = state.copyWith(fetching: true);
      var response = await ref.read(tableService).findAll();
      state = state.copyWith(fetching: false,tables: response);
      //ref.read(databseService).addChapter(response);
      return response;
    } on Exception catch (e) {
       log(e.toString());
      state = state.copyWith(fetching: false, error : e.toString());
    }
  }
}

final tableController = StateNotifierProvider<TableController, TableState>((ref) {
  return TableController(ref);
});
