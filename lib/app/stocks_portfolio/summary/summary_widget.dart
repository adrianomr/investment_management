import 'package:flutter/material.dart';
import 'package:investment_management/app/stocks_portfolio/dto/portfolio_dto.dart';
import 'package:investment_management/util/colors_util.dart';
import 'package:investment_management/util/currency_util.dart';
import 'package:investment_management/util/percentage_util.dart';

class SummaryWidget extends StatelessWidget {
  PortfolioDto portfolioDto;

  SummaryWidget(this.portfolioDto);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsUtil.primary,
      child: Column(
        children: [
          buildPatrimony(portfolioDto),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          buildTotals(portfolioDto),
          Padding(padding: EdgeInsets.only(bottom: 15)),
        ],
      ),
    );
  }

  Widget buildPatrimony(PortfolioDto portfolioDto) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "Patrimonio ",
            style: TextStyle(color: ColorsUtil.secondary, fontSize: 20),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            CurrencyUtil.doubleToCurrency(portfolioDto.patrimony),
            style: TextStyle(
              color: ColorsUtil.secondary,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "( ${PercentageUtil.doubleToPercentage(portfolioDto.percentualBalance)} )",
            style: TextStyle(color: ColorsUtil.secondary, fontSize: 17),
          ),
        ),
      ],
    );
  }

  Widget buildContainer(String text) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        text,
        style: TextStyle(color: ColorsUtil.secondary, fontSize: 17),
      ),
    );
  }

  Widget buildTotals(PortfolioDto portfolioDto) {
    return Row(
      children: [
        Expanded(child: buildAmountInvested(portfolioDto)),
        Expanded(child: buildBalance(portfolioDto)),
      ],
    );
  }

  Widget buildAmountInvested(PortfolioDto portfolioDto) {
    return Column(
      children: [
        buildContainer("Investido"),
        buildContainer(
          CurrencyUtil.doubleToCurrency(portfolioDto.investedAmount),
        )
      ],
    );
  }

  Widget buildBalance(PortfolioDto portfolioDto) {
    return Column(
      children: [
        buildContainer("Saldo"),
        buildContainer(CurrencyUtil.doubleToCurrency(portfolioDto.balance)),
      ],
    );
  }
}
