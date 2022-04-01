import 'package:investment_management/domain/investment_categories.dart';
import 'package:investment_management/infra/gateway/category_gateway.dart';
import 'package:investment_management/infra/gateway/category_gateway_impl.dart';

import 'find_categories.dart';

class FindCategoriesUseCaseImpl implements FindCategoriesUseCase {
  static final FindCategoriesUseCaseImpl _singleton =
      FindCategoriesUseCaseImpl._internal();

  CategoryGateway categoryGateway = CategoryGatewayImpl();

  factory FindCategoriesUseCaseImpl() {
    return _singleton;
  }

  FindCategoriesUseCaseImpl._internal();

  @override
  Future<InvestmentCategories> execute() async {
    return await categoryGateway.find();
  }
}
