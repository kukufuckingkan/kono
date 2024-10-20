import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/repository/book_api.dart';
import 'package:kono/response/book_response.dart';



class BookService {
  final Ref ref;

  BookService(this.ref);

    Future<List<BookResponse>> findAll() async {
    try {
      var response = await ref.read(bookApi).findAll();
      return response;
    } on DioException catch (e) {
          log(e.toString());
      throw Exception(e);
    } on SocketException catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

}

final bookService =
    Provider<BookService>((ref) => BookService(ref));
