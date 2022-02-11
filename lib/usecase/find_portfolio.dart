import 'package:investment_management/domain/portfolio.dart';

abstract class FindPortfolioUseCase{

  Future<Portfolio> execute();

}