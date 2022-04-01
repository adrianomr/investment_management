import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'home_bloc.dart';
import 'home_widget.dart';

class HomeModule extends ModuleWidget {
  //Inject the blocs
  @override
  List<Bloc<BlocBase>> get blocs => [Bloc((i) => HomeBloc())];

  //Inject the dependencies
  @override
  List<Dependency> get dependencies => [];

  //main widget
  @override
  Widget get view => homeWidget();

  //shortcut to pick up dependency injections from this module
  static Inject get to => Inject<HomeModule>.of();
}
