import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/response/book_response.dart';
import 'package:kono/response/section_response.dart';
import 'package:retrofit/retrofit.dart';

import '../main.dart';




part 'section_api.g.dart';

class EndPoint {
      static const findAll = "/section/book";
}

@RestApi(baseUrl: 'http://192.168.0.95:8050')
abstract class SectionApi {

  factory SectionApi(Dio dio, {String baseUrl}) =
      _SectionApi;



  @GET(EndPoint.findAll)
  Future<List<SectionResponse>> findAllByBookSku(@Query("bookSku") String bookSku);
}


final sectionApi = Provider<SectionApi>((ref) {
  var url = appProperties['SEMBA_BASE_URL'];
  // configure dio
  //final dio = ref.watch(localStorageController).dioClient;
  return SectionApi(Dio(), baseUrl: url);
});
