import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:investment_management/infra/presenter/portfolio_summary_presenter_impl.dart';

import 'home_bloc.dart';
import 'home_widget.dart';

class HomeModule extends ModuleWidget {
  //Inject the blocs
  @override
  List<Bloc<BlocBase>> get blocs => [
        Bloc((i) => HomeBloc()),
        Bloc((i) => PortfolioPresenterImpl()),
      ];

  //Inject the dependencies
  @override
  List<Dependency> get dependencies => [];

  //main widget
  @override
  Widget get view => HomeWidget();

  //shortcut to pick up dependency injections from this module
  static Inject get to => Inject<HomeModule>.of();
}
