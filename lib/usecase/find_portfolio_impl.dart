import 'package:investment_management/domain/portfolio.dart';
import 'package:investment_management/infra/gateway/portfolio_gateway.dart';
import 'package:investment_management/infra/gateway/portfolio_gateway_impl.dart';

import 'find_portfolio.dart';

class FindPortfolioUseCaseImpl implements FindPortfolioUseCase {
  static final FindPortfolioUseCaseImpl _singleton = FindPortfolioUseCaseImpl._internal();

  PortfolioGateway portfolioGateway = PortfolioGatewayImpl();

  factory FindPortfolioUseCaseImpl() {
    return _singleton;
  }

  FindPortfolioUseCaseImpl._internal();

  @override
  Future<Portfolio> execute() async {
    return await portfolioGateway.find();
  }
}
