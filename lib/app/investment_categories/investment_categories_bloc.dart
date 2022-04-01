import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:investment_management/infra/presenter/category_presenter.dart';

import 'dto/investment_categories_dto.dart';
import 'investment_categories_module.dart';

class InvestmentCategoriesBloc extends BlocBase {
  CategoryPresenter categoryPresenter = InvestmentCategoriesModule.to.getBloc<
      CategoryPresenter>();
  StreamController<InvestmentCategoriesDto> portfolioController = StreamController();

  fetchData() async {
    portfolioController.add(await categoryPresenter.findCategories());
  }

}
