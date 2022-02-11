import 'package:investment_management/domain/portfolio.dart';

abstract class PortfolioGateway {
  Future<Portfolio> find();

}
