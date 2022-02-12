import 'package:investment_management/domain/stock.dart';

class StockDto {
  int? id;
  String? ticker;
  double price = 0;
  double priceAvg = 0;
  int amount = 0;
  double investedAmount = 0;
  double currentAmount = 0;
  double balance = 0;
  double grade = 0;
  double targetAmount = 0;
  double amountToInvest = 0;

  StockDto(
      {this.id,
      this.ticker,
      required this.price,
      required this.priceAvg,
      required this.amount,
      required this.investedAmount,
      required this.currentAmount,
      required this.balance,
      required this.grade,
      required this.targetAmount,
      required this.amountToInvest});

  static StockDto fromStock(Stock stock) {
    return StockDto(
      id: stock.id,
      ticker: stock.ticker,
      targetAmount: stock.targetAmount,
      priceAvg: stock.priceAvg,
      price: stock.price,
      grade: stock.grade,
      amountToInvest: stock.amountToInvest,
      amount: stock.amount,
      balance: stock.balance,
      currentAmount: stock.currentAmount,
      investedAmount: stock.investedAmount,
    );
  }
}
