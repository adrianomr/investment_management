import 'category_dto.dart';

class InvestmentCategoriesDto {
  double totalAmount;
  double investedAmount;
  double balance;
  double percentageBalance;
  List<CategoryDto> categories;

  InvestmentCategoriesDto({
    required this.totalAmount,
    required this.investedAmount,
    required this.balance,
    required this.percentageBalance,
    required this.categories
  });

}
