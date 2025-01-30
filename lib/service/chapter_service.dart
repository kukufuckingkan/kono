import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/repository/chapter_api.dart';
import 'package:kono/response/chapter_response.dart';



class ChapterService {
  final Ref ref;

  ChapterService(this.ref);

    Future<List<ChapterResponse>> findAll() async {
    try {
      var response = await ref.read(chapterApi).findAll();
      return response;
    } on DioException catch (e) {
          log(e.toString());
      throw Exception(e);
    } on SocketException catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

    Future<ChapterResponse> findBySku(String sku) async {
    try {
      var response = await ref.read(chapterApi).findBySku(sku);
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

final chapterService =
    Provider<ChapterService>((ref) => ChapterService(ref));
