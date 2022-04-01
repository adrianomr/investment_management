import 'package:flutter/material.dart';
import 'package:investment_management/app/investment_categories/dto/category_dto.dart';
import 'package:investment_management/app/investment_categories/dto/investment_categories_dto.dart';

import 'category_card/category_card.dart';
import 'investment_categories_bloc.dart';
import 'investment_categories_module.dart';
import 'summary/summary_widget.dart';

class InvestmentCategoriesWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InvestmentCategoriesState();
}

class _InvestmentCategoriesState extends State<InvestmentCategoriesWidget> {
  InvestmentCategoriesBloc investmentCategoriesBloc =
      InvestmentCategoriesModule.to.getBloc<InvestmentCategoriesBloc>();

  @override
  void initState() {
    investmentCategoriesBloc.fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerente Financeiro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: StreamBuilder<InvestmentCategoriesDto>(
          stream: investmentCategoriesBloc.portfolioController.stream,
          builder: (context, snapshot) {
            InvestmentCategoriesDto? investmentCategoriesDto = snapshot.data;
            if (investmentCategoriesDto != null) {
              return Container(
                child: Column(
                  children: <Widget>[
                    SummaryWidget(investmentCategoriesDto),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    getListCategories(investmentCategoriesDto.categories),
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget getListCategories(List<CategoryDto> categories) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: categories
              .map((category) => CategoryCardWidget(category))
              .toList(),
        ),
      ),
    );
  }
}
