import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:investment_management/infra/presenter/category_presenter_impl.dart';
import 'package:investment_management/infra/presenter/portfolio_summary_presenter_impl.dart';

import 'stocks_portfolio_bloc.dart';
import 'stocks_portfolio_widget.dart';

class StocksPortfolioModule extends ModuleWidget {
  //Inject the blocs
  @override
  List<Bloc<BlocBase>> get blocs => [
        Bloc((i) => StocksPortfolioBloc()),
        Bloc((i) => PortfolioPresenterImpl()),
        Bloc((i) => CategoryPresenterImpl()),
      ];

  //Inject the dependencies
  @override
  List<Dependency> get dependencies => [];

  //main widget
  @override
  Widget get view => StocksPortfolioWidget();

  //shortcut to pick up dependency injections from this module
  static Inject get to => Inject<StocksPortfolioModule>.of();
}
