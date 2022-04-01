import 'package:investment_management/app/stocks_portfolio/dto/portfolio_dto.dart';

abstract class PortfolioPresenter{
  Future<PortfolioDto> findPortfolioSummary();

}