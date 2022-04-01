import 'dto/investment_categories_dto.dart';

abstract class CategoriesClient {
  Future<InvestmentCategoriesDto> find();
}
