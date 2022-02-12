import 'package:investment_management/enviroment/environment.dart';
import 'package:investment_management/framework/rest/base/dio_client_impl.dart';
import 'package:investment_management/framework/rest/dto/response_dto.dart';

abstract class RestClient {

  Future<ResponseDto> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  static RestClient buildClient(String basePath){
    Environment environment = Environment();
    if(environment.env == EnviromentEnum.MOCKED){
      return DioClient(basePath);
    }
    if(environment.env == EnviromentEnum.TEST){
      return DioClient(basePath);
    }
    return DioClient(basePath);
  }
}
