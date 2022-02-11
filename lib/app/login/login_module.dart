import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:investment_management/infra/presenter/user_presenter_impl.dart';

import 'login_bloc.dart';
import 'login_widget.dart';

class LoginModule extends ModuleWidget {

  //Inject the blocs
  @override
  List<Bloc<BlocBase>> get blocs => [
  Bloc((i) => LoginBloc()),
  Bloc((i) => UserPresenterImpl()),
  ];

  //Inject the dependencies
  @override
  List<Dependency> get dependencies => [];

  //main widget
  @override
  Widget get view => LoginWidget();

  //shortcut to pick up dependency injections from this module
  static Inject get to => Inject<LoginModule>.of();

}
