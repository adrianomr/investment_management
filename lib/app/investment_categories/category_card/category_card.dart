import 'package:flutter/material.dart';
import 'package:investment_management/app/investment_categories/dto/category_dto.dart';
import 'package:investment_management/util/colors_util.dart';
import 'package:investment_management/util/currency_util.dart';
import 'package:investment_management/util/percentage_util.dart';

class CategoryCardWidget extends StatelessWidget {
  CategoryDto categoryDto;

  CategoryCardWidget(this.categoryDto);

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
              "${categoryDto.name}",
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
              "Valor Atual",
              style: TextStyle(color: ColorsUtil.secondary),
            ),
          ),
          Container(
            child: Text(
              CurrencyUtil.doubleToCurrency(categoryDto.currentAmount),
              style: TextStyle(color: ColorsUtil.secondary),
            ),
          ),
          Container(
            child: Text(
              PercentageUtil.doubleToPercentage(categoryDto.percentageBalance),
              style: TextStyle(color: ColorsUtil.secondary),
            ),
          ),
        ],
      ),
    );
  }
}
