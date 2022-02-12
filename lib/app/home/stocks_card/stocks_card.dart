import 'package:flutter/material.dart';
import 'package:investment_management/app/home/dto/portfolio_dto.dart';
import 'package:investment_management/app/home/dto/stock_dto.dart';
import 'package:investment_management/util/colors_util.dart';
import 'package:investment_management/util/currency_util.dart';
import 'package:investment_management/util/percentage_util.dart';

class StocksCardWidget extends StatelessWidget {
  StockDto stockDto;

  StocksCardWidget(this.stockDto);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ColorsUtil.primary,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  leftColumn(),
                  rightColumn(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget leftColumn() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "${stockDto.ticker}",
              style: TextStyle(color: ColorsUtil.secondary),
            ),
          ),
          Container(
            child: Text(
              "Qtd: ${stockDto.amount}",
              style: TextStyle(color: ColorsUtil.secondary),
            ),
          ),
          Container(
            child: Text(
              "Pos: ${CurrencyUtil.doubleToCurrency(stockDto.currentAmount)}",
              style: TextStyle(color: ColorsUtil.secondary),
            ),
          ),
        ],
      ),
    );
  }

  Widget rightColumn() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            child: Text(
              "Saldo",
              style: TextStyle(color: ColorsUtil.secondary),
            ),
          ),
          Container(
            child: Text(
              CurrencyUtil.doubleToCurrency(stockDto.balance),
              style: TextStyle(color: ColorsUtil.secondary),
            ),
          ),
          Container(
            child: Text(
              PercentageUtil.doubleToPercentage(stockDto.balance/stockDto.investedAmount),
              style: TextStyle(color: ColorsUtil.secondary),
            ),
          ),
        ],
      ),
    );
  }
}
