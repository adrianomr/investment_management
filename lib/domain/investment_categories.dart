import 'category.dart';

class InvestmentCategories {
  double totalAmount;
  double investedAmount;
  double balance;
  double percentageBalance;
  List<Category> categories;

  InvestmentCategories(
      {required this.totalAmount,
      required this.investedAmount,
      required this.balance,
      required this.percentageBalance,
      required this.categories});
}
