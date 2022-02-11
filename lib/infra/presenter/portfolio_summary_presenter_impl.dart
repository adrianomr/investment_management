import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:investment_management/app/home/dto/portfolio_summary_dto.dart';

import 'portfolio_summary_presenter.dart';

class PortfolioPresenterImpl extends BlocBase implements PortfolioPresenter {
  static final PortfolioPresenterImpl _singleton =
      PortfolioPresenterImpl._internal();

  factory PortfolioPresenterImpl() {
    return _singleton;
  }

  PortfolioPresenterImpl._internal();

  @override
  PortfolioDto findPortfolioSummary() {
    return PortfolioDto(patrimony: 100.55);
  }
}
