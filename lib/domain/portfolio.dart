import 'package:investment_management/framework/rest/dto/portfolio_dto.dart';

class Portfolio {
  int id = 0;
  double investedAmount = 0;
  double currentAmount = 0;
  double balance = 0;

  Portfolio(PortfolioDto portfolioDto){
    id = portfolioDto.id;
    investedAmount = portfolioDto.investedAmount;
    currentAmount = portfolioDto.currentAmount;
    balance = portfolioDto.balance;
  }
}
