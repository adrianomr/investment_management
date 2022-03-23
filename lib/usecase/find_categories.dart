import 'package:investment_management/domain/category.dart';

abstract class FindCategoriesUseCase{

  Future<List<Category>> execute();

}