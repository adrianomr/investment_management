import 'package:investment_management/domain/portfolio.dart';
import 'package:investment_management/framework/repository/in_memory/user_repository_in_memory.dart';
import 'package:investment_management/framework/repository/user_repository.dart';
import 'package:investment_management/framework/rest/portfolio_client.dart';
import 'package:investment_management/framework/rest/portfolio_client_impl.dart';
import 'package:investment_management/infra/gateway/portfolio_gateway.dart';

import 'user_gateway.dart';

class PortfolioGatewayImpl implements PortfolioGateway {
  static final PortfolioGatewayImpl _singleton = PortfolioGatewayImpl._internal();

  PortfolioClient portfolioClient = PortfolioClientImpl();

  factory PortfolioGatewayImpl() {
    return _singleton;
  }

  PortfolioGatewayImpl._internal();

  @override
  Future<Portfolio> find() async {
    return Portfolio(await portfolioClient.find());
  }

}
