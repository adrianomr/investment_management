import 'package:investment_management/domain/investment_categories.dart';

abstract class CategoryGateway {
  Future<InvestmentCategories> find();

}
