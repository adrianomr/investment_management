import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:investment_management/app/home/dto/category_dto.dart';
import 'package:investment_management/domain/category.dart';
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
  Future<List<CategoryDto>> findCategories() async {
    List<Category> categories = await findCategoriesUseCase.execute();
    return categories.map((e) => toDto(e)).toList();
  }

  CategoryDto toDto(Category e) {
    return CategoryDto(
      id: e.id,
      name: e.name,
      grade: e.grade,
      currentAmount: e.currentAmount,
      targetAmount: e.targetAmount,
      category: toDtoNullable(e.category),
    );
  }

  CategoryDto? toDtoNullable(Category? e) {
    if (e == null) {
      return null;
    }
    return toDto(e);
  }
}
