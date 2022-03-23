import 'package:investment_management/framework/rest/base/rest_client.dart';
import 'package:investment_management/framework/rest/dto/category_dto.dart';

import 'categories_client.dart';

class CategoriesClientImpl implements CategoriesClient {
  RestClient restClient = RestClient.buildClient("investment-categories");
  @override
  Future<List<CategoryDto>> find() async {
    Map<String, dynamic> headers = {'Authorization': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjF9.8lSCknTnRANlJ0AVzCgO2yF838WYA7bLaAR7vAKnofo'};
    return CategoryDto.fromResponse(await restClient.get("categories", headers: headers));
  }
}
