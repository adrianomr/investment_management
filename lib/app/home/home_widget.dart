import 'package:flutter/material.dart';
import 'package:investment_management/app/home/home_bloc.dart';
import 'package:investment_management/app/home/home_module.dart';
import 'package:investment_management/app/home/summary/summary_widget.dart';



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
        body: Container(
          child: Column(
            children: <Widget>[
              SummaryWidget()
            ],
          ),
        ),
      ),
    );
  }
}
