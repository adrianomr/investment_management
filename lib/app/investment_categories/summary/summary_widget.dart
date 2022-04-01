import 'package:flutter/material.dart';
import 'package:investment_management/app/investment_categories/dto/investment_categories_dto.dart';
import 'package:investment_management/util/colors_util.dart';
import 'package:investment_management/util/currency_util.dart';
import 'package:investment_management/util/percentage_util.dart';

class SummaryWidget extends StatelessWidget {
  InvestmentCategoriesDto investmentCategoriesDto;

  SummaryWidget(this.investmentCategoriesDto);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsUtil.primary,
      child: Column(
        children: [
          buildPatrimony(investmentCategoriesDto),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          buildTotals(investmentCategoriesDto),
          Padding(padding: EdgeInsets.only(bottom: 15)),
        ],
      ),
    );
  }

  Widget buildPatrimony(InvestmentCategoriesDto investmentCategoriesDto) {
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
            CurrencyUtil.doubleToCurrency(investmentCategoriesDto.totalAmount),
            style: TextStyle(
              color: ColorsUtil.secondary,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "( ${PercentageUtil.doubleToPercentage(investmentCategoriesDto.percentageBalance)} )",
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

  Widget buildTotals(InvestmentCategoriesDto investmentCategoriesDto) {
    return Row(
      children: [
        Expanded(child: buildAmountInvested(investmentCategoriesDto)),
        Expanded(child: buildBalance(investmentCategoriesDto)),
      ],
    );
  }

  Widget buildAmountInvested(InvestmentCategoriesDto investmentCategoriesDto) {
    return Column(
      children: [
        buildContainer("Investido"),
        buildContainer(
          CurrencyUtil.doubleToCurrency(investmentCategoriesDto.investedAmount),
        )
      ],
    );
  }

  Widget buildBalance(InvestmentCategoriesDto investmentCategoriesDto) {
    return Column(
      children: [
        buildContainer("Saldo"),
        buildContainer(
            CurrencyUtil.doubleToCurrency(investmentCategoriesDto.balance)),
      ],
    );
  }
}
