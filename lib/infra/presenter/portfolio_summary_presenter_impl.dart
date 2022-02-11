import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:investment_management/app/home/dto/portfolio_summary_dto.dart';
import 'package:investment_management/domain/portfolio.dart';
import 'package:investment_management/usecase/find_portfolio.dart';
import 'package:investment_management/usecase/find_portfolio_impl.dart';

import 'portfolio_summary_presenter.dart';

class PortfolioPresenterImpl extends BlocBase implements PortfolioPresenter {
  static final PortfolioPresenterImpl _singleton =
      PortfolioPresenterImpl._internal();
  FindPortfolioUseCase findPortfolioUseCase = FindPortfolioUseCaseImpl();

  factory PortfolioPresenterImpl() {
    return _singleton;
  }

  PortfolioPresenterImpl._internal();

  @override
  Future<PortfolioDto> findPortfolioSummary() async {
    Portfolio portfolio = await findPortfolioUseCase.execute();
    return PortfolioDto(patrimony: portfolio.currentAmount);
  }
}
