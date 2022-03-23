import 'dart:async';
import 'dart:developer';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:investment_management/app/home/dto/portfolio_dto.dart';
import 'package:investment_management/app/home/home_module.dart';
import 'package:investment_management/infra/presenter/category_presenter.dart';
import 'package:investment_management/infra/presenter/portfolio_summary_presenter.dart';

class HomeBloc extends BlocBase {
  PortfolioPresenter portfolioPresenter = HomeModule.to.getBloc<
      PortfolioPresenter>();
  CategoryPresenter categoryPresenter = HomeModule.to.getBloc<
      CategoryPresenter>();
  StreamController<PortfolioDto> portfolioController = StreamController();

  fetchData() async {
    categoryPresenter.findCategories().then((value) => log(value.toString()));
    portfolioController.add(await portfolioPresenter.findPortfolioSummary());
  }

}
