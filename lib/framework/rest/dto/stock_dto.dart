class StockDto {
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

  StockDto(
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

  StockDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ticker = json['ticker'];
    // price = json['price'];
    // priceAvg = json['priceAvg'];
    // amount = json['amount'];
    // investedAmount = json['investedAmount'];
    // currentAmount = json['currentAmount'];
    // balance = json['balance'];
    // grade = json['grade'];
    // targetAmount = json['targetAmount'];
    // amountToInvest = json['amountToInvest'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ticker'] = this.ticker;
    data['price'] = this.price;
    data['priceAvg'] = this.priceAvg;
    data['amount'] = this.amount;
    data['investedAmount'] = this.investedAmount;
    data['currentAmount'] = this.currentAmount;
    data['balance'] = this.balance;
    data['grade'] = this.grade;
    data['targetAmount'] = this.targetAmount;
    data['amountToInvest'] = this.amountToInvest;
    return data;
  }
}