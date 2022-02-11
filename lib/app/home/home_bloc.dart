import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:investment_management/app/home/dto/portfolio_summary_dto.dart';
import 'package:investment_management/app/home/home_module.dart';
import 'package:investment_management/infra/presenter/portfolio_summary_presenter.dart';

class HomeBloc extends BlocBase {
  PortfolioPresenter portfolioPresenter = HomeModule.to.getBloc<
      PortfolioPresenter>();
  StreamController<PortfolioDto> portfolioController = StreamController();

  fetchData() async {
    portfolioController.add(await portfolioPresenter.findPortfolioSummary());
  }

}
