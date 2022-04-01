import 'package:flutter/material.dart';

import 'dto/portfolio_dto.dart';
import 'stocks_card/stocks_card.dart';
import 'stocks_portfolio_bloc.dart';
import 'stocks_portfolio_module.dart';
import 'summary/summary_widget.dart';

class StocksPortfolioWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StocksPortfolioState();
}

class _StocksPortfolioState extends State<StocksPortfolioWidget> {
  StocksPortfolioBloc stocksPortfolioBloc = StocksPortfolioModule.to.getBloc<StocksPortfolioBloc>();

  @override
  void initState() {
    stocksPortfolioBloc.fetchData();
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
          stream: stocksPortfolioBloc.portfolioController.stream,
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
