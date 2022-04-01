import 'dart:async';
import 'dart:developer';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:investment_management/infra/presenter/category_presenter.dart';
import 'package:investment_management/infra/presenter/portfolio_summary_presenter.dart';

import 'dto/portfolio_dto.dart';
import 'stocks_portfolio_module.dart';

class StocksPortfolioBloc extends BlocBase {
  PortfolioPresenter portfolioPresenter = StocksPortfolioModule.to.getBloc<
      PortfolioPresenter>();
  CategoryPresenter categoryPresenter = StocksPortfolioModule.to.getBloc<
      CategoryPresenter>();
  StreamController<PortfolioDto> portfolioController = StreamController();

  fetchData() async {
    categoryPresenter.findCategories().then((value) => log(value.toString()));
    portfolioController.add(await portfolioPresenter.findPortfolioSummary());
  }

}
