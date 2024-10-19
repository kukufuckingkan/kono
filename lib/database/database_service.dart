
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:kono/database/chapter_entity.dart';
import 'package:kono/response/chapter_response.dart';

class DatabaseService {
  final Ref ref;

  DatabaseService(this.ref);

  Future<void> addChapter(List<ChapterResponse> chapters) async {
   var box = await  Hive.openBox<ChapterEntity>('chapters');
  //     var person = Person(
  //   name: 'Dave',
  //   age: 22,
  //   friends: ['Linda', 'Marc', 'Anne'],
  // );

  var chapt = chapters.first;

  var test = ChapterEntity(name: chapt.name ?? '', ordinal: chapt.ordinal ?? 1, id: chapt.id ?? "", data: chapt.data);

  await box.put(chapt.id,test);
  getChapter(chapt.id);
  }

  Future<ChapterEntity?> getChapter(String id) async {
      var box = await  Hive.openBox<ChapterEntity>('chapters');
     var content =  box.get(id);
     return content;
  }
}

final databseService = Provider<DatabaseService>((ref) => DatabaseService(ref));
