import 'package:investment_management/domain/portfolio.dart';
import 'package:investment_management/domain/stock.dart';
import 'package:investment_management/framework/repository/in_memory/user_repository_in_memory.dart';
import 'package:investment_management/framework/repository/user_repository.dart';
import 'package:investment_management/framework/rest/dto/portfolio_dto.dart';
import 'package:investment_management/framework/rest/dto/stock_dto.dart';
import 'package:investment_management/framework/rest/portfolio_client.dart';
import 'package:investment_management/framework/rest/portfolio_client_impl.dart';
import 'package:investment_management/infra/gateway/portfolio_gateway.dart';

import 'user_gateway.dart';

class PortfolioGatewayImpl implements PortfolioGateway {
  static final PortfolioGatewayImpl _singleton =
      PortfolioGatewayImpl._internal();

  PortfolioClient portfolioClient = PortfolioClientImpl();

  factory PortfolioGatewayImpl() {
    return _singleton;
  }

  PortfolioGatewayImpl._internal();

  @override
  Future<Portfolio> find() async {
    PortfolioDto portfolio = await portfolioClient.find();
    return Portfolio(
      id: portfolio.id,
      balance: portfolio.balance,
      currentAmount: portfolio.currentAmount,
      investedAmount: portfolio.investedAmount,
      stocks: portfolio.stocks.map(toStock).toList(),
    );
  }

  Stock toStock(StockDto stock) {
    return Stock(
      id: stock.id,
      investedAmount: stock.investedAmount,
      currentAmount: stock.currentAmount,
      balance: stock.balance,
      amount: stock.amount,
      amountToInvest: stock.amountToInvest,
      grade: stock.grade,
      price: stock.price,
      priceAvg: stock.priceAvg,
      targetAmount: stock.targetAmount,
      ticker: stock.ticker,
    );
  }
}
