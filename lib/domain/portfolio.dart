import 'package:investment_management/framework/rest/dto/portfolio_dto.dart';

import 'stock.dart';

class Portfolio {
  int id;
  double investedAmount;
  double currentAmount;
  double balance;
  List<Stock> stocks;

  Portfolio({
    required this.id,
    required this.investedAmount,
    required this.currentAmount,
    required this.balance,
    required this.stocks,
  });
}
