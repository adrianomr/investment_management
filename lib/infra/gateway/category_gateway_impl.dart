import 'package:investment_management/domain/category.dart';
import 'package:investment_management/domain/investment_categories.dart';
import 'package:investment_management/framework/rest/categories_client.dart';
import 'package:investment_management/framework/rest/categories_client_impl.dart';
import 'package:investment_management/framework/rest/dto/category_dto.dart';
import 'package:investment_management/framework/rest/dto/investment_categories_dto.dart';
import 'package:investment_management/infra/gateway/category_gateway.dart';

class CategoryGatewayImpl implements CategoryGateway {
  static final CategoryGatewayImpl _singleton = CategoryGatewayImpl._internal();

  CategoriesClient categoriesClient = CategoriesClientImpl();

  factory CategoryGatewayImpl() {
    return _singleton;
  }

  CategoryGatewayImpl._internal();

  @override
  Future<InvestmentCategories> find() async {
    InvestmentCategoriesDto categories = await categoriesClient.find();
    return toInvestmentCategories(categories);
  }

  Category toCategory(CategoryDto dto) {
    return Category(
      id: dto.id ?? "",
      currentAmount: dto.currentAmount ?? 0,
      grade: dto.grade ?? 0,
      targetAmount: dto.targetAmount ?? 0,
      balance: dto.balance ?? 0,
      percentageBalance: dto.percentageBalance ?? 0,
      category: toCategoryNullable(dto.category),
      name: dto.name ?? "",
      investments: dto.investments,
    );
  }
  Category? toCategoryNullable(CategoryDto? dto) {
    if(dto == null){
      return null;
    }
    return toCategory(dto);
  }

  InvestmentCategories toInvestmentCategories(
      InvestmentCategoriesDto investmentCategories) {
    List<CategoryDto> categories = investmentCategories.categories ?? [];
    return InvestmentCategories(
        totalAmount: investmentCategories.totalAmount ?? 0,
        investedAmount: investmentCategories.investedAmount ?? 0,
        balance: investmentCategories.balance ?? 0,
        percentageBalance: investmentCategories.percentageBalance ?? 0,
        categories: categories.map((e) => toCategory(e)).toList());
  }
}
