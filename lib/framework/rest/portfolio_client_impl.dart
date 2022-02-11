import 'package:investment_management/framework/rest/base/dio_client_impl.dart';
import 'package:investment_management/framework/rest/base/rest_client.dart';
import 'package:investment_management/framework/rest/dto/portfolio_dto.dart';

import 'portfolio_client.dart';

class PortfolioClientImpl implements PortfolioClient {
  RestClient restClient = DioClient("https://ar-stocks-portfolio.herokuapp.com");
  @override
  Future<PortfolioDto> find() async {
    Map<String, dynamic> headers = {'Authorization': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjF9.8lSCknTnRANlJ0AVzCgO2yF838WYA7bLaAR7vAKnofo'};
    return PortfolioDto.fromResponse(await restClient.get("portfolio", headers: headers));
  }
}
