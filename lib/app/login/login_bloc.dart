import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:investment_management/app/login/login_module.dart';
import 'package:investment_management/infra/presenter/user_presenter.dart';

class LoginBloc extends BlocBase {
  UserPresenter userPresenter = LoginModule.to.getBloc<UserPresenter>();
  String _login = '';

  login(BuildContext context) {
    userPresenter.login(_login);
  }

  updateLogin(String login) {
    _login = login;
  }
}
