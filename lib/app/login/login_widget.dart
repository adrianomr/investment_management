import 'package:flutter/material.dart';
import 'package:investment_management/components/button/submit_widget.dart';
import 'package:investment_management/components/fields/text_input_widget.dart';

import 'login_bloc.dart';
import 'login_module.dart';

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<LoginWidget> {
  LoginBloc loginBloc = LoginModule.to.getBloc<LoginBloc>();

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
              TextInputWidget("Login", callback: loginBloc.updateLogin,),
              SubmitWidget(() => loginBloc.login(), text: "Login",)
            ],
          ),
        ),
      ),
    );
  }
}
