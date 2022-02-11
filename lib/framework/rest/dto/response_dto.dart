import 'package:dio/src/response.dart';

class ResponseDto {
  dynamic data;
  int status = 0;

  ResponseDto(Response response) {
    data = response.data;
    if (response.statusCode == null) {
      status = 0;
    } else {
      status = response.statusCode!;
    }
  }

}