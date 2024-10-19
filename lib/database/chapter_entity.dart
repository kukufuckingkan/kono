
import 'package:hive/hive.dart';

part 'chapter_entity.g.dart';

@HiveType(typeId: 1)
class ChapterEntity {

  @HiveField(0)
   final int  id;

   @HiveField(2)
   final int ordinal;

   @HiveField(3)
   final String name;

  ChapterEntity({required this.name, required this.ordinal,required this.id});

  @override
  String toString() {
    return '$name: $name';
  }
  
}