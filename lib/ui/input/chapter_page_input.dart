class ChapterPageInput {
  final String chapterSku;
  final String ? chapterName;
  final String ? sectionName;
  final String sectionSku;
  final String ? bookSku;
  final String  ? bookName;

  ChapterPageInput({
  required this.chapterSku,
  required this.sectionSku,
  this.bookSku,
  this.bookName,
   this.chapterName, 
   this.sectionName});
  
}