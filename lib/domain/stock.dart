class Stock {
  int? id;
  String? ticker;
  double? price;
  double? priceAvg;
  int? amount;
  double? investedAmount;
  double? currentAmount;
  double? balance;
  double? grade;
  int? targetAmount;
  double? amountToInvest;

  Stock(
      {this.id,
        this.ticker,
        this.price,
        this.priceAvg,
        this.amount,
        this.investedAmount,
        this.currentAmount,
        this.balance,
        this.grade,
        this.targetAmount,
        this.amountToInvest});

}