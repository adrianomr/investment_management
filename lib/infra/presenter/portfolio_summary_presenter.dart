import 'package:investment_management/app/home/dto/portfolio_dto.dart';

abstract class PortfolioPresenter{
  Future<PortfolioDto> findPortfolioSummary();

}