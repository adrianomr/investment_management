import 'package:investment_management/domain/investment_categories.dart';

abstract class FindCategoriesUseCase {
  Future<InvestmentCategories> execute();
}
