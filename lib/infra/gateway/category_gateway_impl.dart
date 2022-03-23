import 'package:investment_management/domain/category.dart';
import 'package:investment_management/framework/rest/categories_client.dart';
import 'package:investment_management/framework/rest/categories_client_impl.dart';
import 'package:investment_management/framework/rest/dto/category_dto.dart';
import 'package:investment_management/infra/gateway/category_gateway.dart';

class CategoryGatewayImpl implements CategoryGateway {
  static final CategoryGatewayImpl _singleton = CategoryGatewayImpl._internal();

  CategoriesClient categoriesClient = CategoriesClientImpl();

  factory CategoryGatewayImpl() {
    return _singleton;
  }

  CategoryGatewayImpl._internal();

  @override
  Future<List<Category>> find() async {
    List<CategoryDto> categories = await categoriesClient.find();
    return categories
        .map((dto) => toCategory(dto))
        .whereType<Category>()
        .toList();
  }

  Category? toCategory(CategoryDto? dto) {
    if (dto == null) {
      return null;
    }
    return Category(
      id: dto.id ?? "",
      currentAmount: dto.currentAmount ?? 0,
      grade: dto.grade ?? 0,
      targetAmount: dto.targetAmount ?? 0,
      category: toCategory(dto.category),
      name: dto.name ?? "",
      investments: dto.investments,
    );
  }
}
