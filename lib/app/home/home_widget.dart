import 'package:flutter/material.dart';
import 'package:investment_management/app/investment_categories/investment_categories_module.dart';

class homeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<homeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InvestmentCategoriesModule(),
    );
  }
}
