import 'package:investment_management/framework/rest/dto/response_dto.dart';

import 'stock_dto.dart';

class PortfolioDto {
  int id = 0;
  double investedAmount = 0;
  double currentAmount = 0;
  double balance = 0;
  List<StockDto> stocks = [];

  PortfolioDto({
    required this.id,
    required this.investedAmount,
    required this.currentAmount,
    required this.balance,
    required this.stocks,
  });

  PortfolioDto.fromResponse(ResponseDto reponse) {
    id = reponse.data['id'];
    investedAmount = reponse.data['investedAmount'];
    currentAmount = reponse.data['currentAmount'];
    balance = reponse.data['balance'];
    if (reponse.data['stocks'] == null) {
      reponse.data['stocks']
          .forEach((stockJson) => stocks.add(StockDto.fromJson(stockJson)));
    }
  }
}
