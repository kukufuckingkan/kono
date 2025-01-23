import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../main.dart';
import '../response/chapter_response.dart';
import '../response/table_response.dart';




part 'table_api.g.dart';

class EndPoint {
      static const findAll = "/table";
}

@RestApi(baseUrl: 'http://192.168.0.95:8050')
abstract class TableApi {

  factory TableApi(Dio dio, {String baseUrl}) =
      _TableApi;



  @GET(EndPoint.findAll)
  Future<List<TableResponse>> findAll();
}


final tableApi = Provider<TableApi>((ref) {
  var url = appProperties['SEMBA_BASE_URL'];
  
  //final dio = ref.watch(localStorageController).dioClient;
  return TableApi(Dio(), baseUrl: url);
});
