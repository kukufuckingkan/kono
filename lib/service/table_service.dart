import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/repository/chapter_api.dart';
import 'package:kono/repository/table_api.dart';
import 'package:kono/response/chapter_response.dart';

import '../response/table_response.dart';



class TableService {
  final Ref ref;

  TableService(this.ref);

    Future<List<TableResponse>> findAll() async {
    try {
      var response = await ref.read(tableApi).findAll();
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

final tableService =
    Provider<TableService>((ref) => TableService(ref));
