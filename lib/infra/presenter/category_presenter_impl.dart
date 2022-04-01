import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:investment_management/app/investment_categories/dto/category_dto.dart';
import 'package:investment_management/app/investment_categories/dto/investment_categories_dto.dart';
import 'package:investment_management/domain/category.dart';
import 'package:investment_management/domain/investment_categories.dart';
import 'package:investment_management/usecase/find_categories.dart';
import 'package:investment_management/usecase/find_categories_impl.dart';

import 'category_presenter.dart';

class CategoryPresenterImpl extends BlocBase implements CategoryPresenter {
  static final CategoryPresenterImpl _singleton =
      CategoryPresenterImpl._internal();
  FindCategoriesUseCase findCategoriesUseCase = FindCategoriesUseCaseImpl();

  factory CategoryPresenterImpl() {
    return _singleton;
  }

  CategoryPresenterImpl._internal();

  @override
  Future<InvestmentCategoriesDto> findCategories() async {
    InvestmentCategories categories = await findCategoriesUseCase.execute();
    return toDto(categories);
  }

  CategoryDto toCategoryDto(Category e) {
    return CategoryDto(
      id: e.id,
      name: e.name,
      grade: e.grade,
      currentAmount: e.currentAmount,
      targetAmount: e.targetAmount,
      balance: e.balance,
      percentageBalance: e.percentageBalance,
      category: toDtoNullable(e.category),
    );
  }

  CategoryDto? toDtoNullable(Category? e) {
    if (e == null) {
      return null;
    }
    return toCategoryDto(e);
  }

  InvestmentCategoriesDto toDto(InvestmentCategories categories) {
    return InvestmentCategoriesDto(
        totalAmount: categories.totalAmount,
        investedAmount: categories.investedAmount,
        balance: categories.balance,
        percentageBalance: categories.percentageBalance,
        categories:
            categories.categories.map((e) => toCategoryDto(e)).toList());
  }
}
