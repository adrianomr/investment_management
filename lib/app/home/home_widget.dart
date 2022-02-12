import 'package:flutter/material.dart';
import 'package:investment_management/app/home/home_bloc.dart';
import 'package:investment_management/app/home/home_module.dart';
import 'package:investment_management/app/home/stocks_card/stocks_card.dart';
import 'package:investment_management/app/home/summary/summary_widget.dart';

import 'dto/portfolio_dto.dart';

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeWidget> {
  HomeBloc homeBloc = HomeModule.to.getBloc<HomeBloc>();

  @override
  void initState() {
    homeBloc.fetchData();
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
        body: StreamBuilder<PortfolioDto>(
          stream: homeBloc.portfolioController.stream,
          builder: (context, snapshot) {
            PortfolioDto? portfolioDto = snapshot.data;
            if (portfolioDto != null) {
              return Container(
                child: Column(
                  children: <Widget>[
                    SummaryWidget(portfolioDto),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    getListStocks(portfolioDto),
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

  Widget getListStocks(PortfolioDto portfolioDto) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: portfolioDto.stocks
              .map((stock) => StocksCardWidget(stock))
              .toList(),
        ),
      ),
    );
  }
}
