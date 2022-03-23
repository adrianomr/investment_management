import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:investment_management/framework/rest/dto/response_dto.dart';

import 'rest_client.dart';

class DioClient implements RestClient {
  Dio dio = Dio();

  DioClient(String basePath) {
    dio = Dio(BaseOptions(
      baseUrl: basePath + "/",
    ));
  }

  @override
  Future<ResponseDto> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    log("[HTTP_REQUEST][SENT] - Path: ${path}");
    ResponseDto response = ResponseDto(await dio.get(path,
        queryParameters: queryParameters, options: Options(headers: headers)));
    log("[HTTP_REQUEST][RECEIVED] - Path: ${path}, Status:${response.status}, Response: ${response.data}");
    return response;
  }
}
