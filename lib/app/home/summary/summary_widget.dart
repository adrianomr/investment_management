import 'package:flutter/material.dart';
import 'package:investment_management/app/home/dto/portfolio_summary_dto.dart';
import 'package:investment_management/util/currency_util.dart';

import '../home_bloc.dart';
import '../home_module.dart';

class SummaryWidget extends StatelessWidget {
  HomeBloc homeBloc = HomeModule.to.getBloc<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PortfolioDto>(
      stream: homeBloc.portfolioController.stream,
      builder: (context, snapshot) {
        PortfolioDto? portfolioDto = snapshot.data;
        if (portfolioDto != null) {
          return Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text("Patrimonio "+CurrencyUtil.doubleToCurrency(portfolioDto.patrimony)),
                    )
                  ],
                ),
              )
            ],
          );
        }
        return Container();
      },
    );
  }
}
