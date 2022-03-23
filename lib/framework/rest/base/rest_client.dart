import 'package:investment_management/enviroment/environment.dart';
import 'package:investment_management/framework/rest/base/dio_client_impl.dart';
import 'package:investment_management/framework/rest/dto/response_dto.dart';

abstract class RestClient {
  Future<ResponseDto> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  static RestClient buildClient(String pathKey) {
    Environment environment = Environment();
    String? route = environment.clientConfig.routes[pathKey];
    if(route == null) {
      throw Error.safeToString("Route not found for key: $pathKey");
    }
    return DioClient(route);
  }
}
