import 'package:investment_management/app/home/dto/category_dto.dart';

abstract class CategoryPresenter{
  Future<List<CategoryDto>> findCategories();

}