import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../main.dart';
import '../response/chapter_response.dart';




part 'chapter_api.g.dart';

class EndPoint {
      static const findAll = "/chapter";
}

@RestApi(baseUrl: 'http://192.168.0.95:8050')
abstract class ChapterApi {

  factory ChapterApi(Dio dio, {String baseUrl}) =
      _ChapterApi;



  @GET(EndPoint.findAll)
  Future<List<ChapterResponse>> findAll();
}


final chapterApi = Provider<ChapterApi>((ref) {
  var url = appProperties['SEMBA_BASE_URL'];
  
  //final dio = ref.watch(localStorageController).dioClient;
  return ChapterApi(Dio(), baseUrl: url);
});
