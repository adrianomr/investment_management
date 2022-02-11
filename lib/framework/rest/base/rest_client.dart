import 'package:investment_management/framework/rest/dto/response_dto.dart';

abstract class RestClient {
  Future<ResponseDto> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });
}
