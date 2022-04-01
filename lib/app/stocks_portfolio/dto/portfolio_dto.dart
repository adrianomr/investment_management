import 'package:investment_management/app/stocks_portfolio/dto/stock_dto.dart';

class PortfolioDto {
  double patrimony;
  double balance;
  double percentualBalance;
  double investedAmount;
  List<StockDto> stocks;

  PortfolioDto({
    required this.patrimony,
    required this.balance,
    required this.percentualBalance,
    required this.investedAmount,
    required this.stocks,
  });
}
