import 'package:flutter/material.dart';
import 'package:investment_management/components/button/submit_widget.dart';
import 'package:investment_management/components/fields/text_input_widget.dart';

import 'home_bloc.dart';
import 'home_module.dart';

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeWidget> {
  HomeBloc homeBloc = HomeModule.to.getBloc<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerente Financeiro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gerente Financeiro"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Olá")
            ],
          ),
        ),
      ),
    );
  }
}
