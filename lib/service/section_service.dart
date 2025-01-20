import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/repository/chapter_api.dart';
import 'package:kono/repository/section_api.dart';
import 'package:kono/response/chapter_response.dart';

import '../response/section_response.dart';



class SectionService {
  final Ref ref;

  SectionService(this.ref);

    Future<List<SectionResponse>> findAllByBookSku(String bookSku) async {
    try {
      var response = await ref.read(sectionApi).findAllByBookSku(bookSku);
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

final sectionService =
    Provider<SectionService>((ref) => SectionService(ref));
