import 'dto/category_dto.dart';

abstract class CategoriesClient {
  Future<List<CategoryDto>> find();
}
