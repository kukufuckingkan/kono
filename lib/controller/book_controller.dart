
import 'dart:developer';


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/controller/book_state.dart';
import 'package:kono/response/book_response.dart';
import 'package:kono/service/book_service.dart';


class BookController extends StateNotifier<BookState> {
  final Ref ref;

   BookController(this.ref) : super(BookState.initial()){
        Future.microtask(() => findAll());
   }

    Future<List<BookResponse>> findAll() async {
    try {
      state = state.copyWith(fetching: true);
      var response = await ref.read(bookService).findAll();
      state = state.copyWith(fetching: false,books: response);
     // ref.read(databseService).addChapter(response);
      return response;
    } on Exception catch (e) {
       log(e.toString());
      state = state.copyWith(fetching: false, error : e.toString());
      throw e;
    }
  }
}

final bookController = StateNotifierProvider<BookController, BookState>((ref) {
  return BookController(ref);
});
