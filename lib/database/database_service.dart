import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/repository/chapter_api.dart';
import 'package:kono/response/chapter_response.dart';

class DatabaseService {
  final Ref ref;

  DatabaseService(this.ref);

  Future<List<ChapterResponse>> addChapter() async {
    return [];
  }

  Future<List<ChapterResponse>> getChapter() async {
    return [];
  }
}

final databseService = Provider<DatabaseService>((ref) => DatabaseService(ref));
