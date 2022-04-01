import 'package:investment_management/framework/rest/base/rest_client.dart';

import 'categories_client.dart';
import 'dto/investment_categories_dto.dart';

class CategoriesClientImpl implements CategoriesClient {
  RestClient restClient = RestClient.buildClient("investment-categories");

  @override
  Future<InvestmentCategoriesDto> find() async {
    Map<String, dynamic> headers = {
      'Authorization':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjF9.8lSCknTnRANlJ0AVzCgO2yF838WYA7bLaAR7vAKnofo'
    };
    return InvestmentCategoriesDto.fromResponse(
        await restClient.get("categories", headers: headers));
  }
}
