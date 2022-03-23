import 'package:flutter/material.dart';
import 'package:investment_management/enviroment/environment.dart';

import 'app/app_module.dart';

void main() {
  Environment().setEnviroment(EnviromentEnum.MOCKED);
  runApp(AppModule());
}