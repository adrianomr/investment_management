
import 'package:investment_management/enviroment/environment.dart';

class ClientConfig {
  Map<String, String> routes = {};

  ClientConfig(EnviromentEnum env){
    switch(env){
      case EnviromentEnum.MOCKED:
        buildMocked();
        break;
      case EnviromentEnum.TEST:
        buildMocked();
        break;
      case EnviromentEnum.PROD:
        buildMocked();
        break;
    }
  }

  buildMocked(){
    routes['stocks-portfolio'] = 'http://192.168.88.253:6543';
    routes['investment-categories'] = 'http://192.168.88.253:6543';
  }

  buildTest(){
    routes['stocks-portfolio'] = 'http://localhost:6543';
    routes['investment-categories'] = 'http://192.168.88.253:6543';
  }

  buildProd(){
    routes['stocks-portfolio'] = 'https://ar-stocks-portfolio.herokuapp.com';
    routes['investment-categories'] = 'https://investment-categories.herokuapp.com';
  }

}