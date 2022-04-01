import 'package:investment_management/app/investment_categories/dto/investment_categories_dto.dart';

abstract class CategoryPresenter{
  Future<InvestmentCategoriesDto> findCategories();

}