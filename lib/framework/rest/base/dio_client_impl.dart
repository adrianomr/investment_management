import 'package:dio/dio.dart';
import 'package:investment_management/framework/rest/dto/response_dto.dart';

import 'rest_client.dart';

class DioClient implements RestClient {
  Dio dio = Dio();

  DioClient(String basePath) {
    dio = Dio(BaseOptions(baseUrl: basePath));
  }

  @override
  Future<ResponseDto> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    ResponseDto response = ResponseDto(await dio.get("/" + path,
        queryParameters: queryParameters, options: Options(headers: headers)));
    return response;
  }
}
