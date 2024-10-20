import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/response/book_response.dart';
import 'package:retrofit/retrofit.dart';

import '../main.dart';




part 'book_api.g.dart';

class EndPoint {
      static const findAll = "/book";
}

@RestApi(baseUrl: 'http://192.168.0.95:8050')
abstract class BookApi {

  factory BookApi(Dio dio, {String baseUrl}) =
      _BookApi;



  @GET(EndPoint.findAll)
  Future<List<BookResponse>> findAll();
}


final bookApi = Provider<BookApi>((ref) {
  var url = appProperties['SEMBA_BASE_URL'];
  
  //final dio = ref.watch(localStorageController).dioClient;
  return BookApi(Dio(), baseUrl: url);
});
