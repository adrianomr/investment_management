import 'package:investment_management/enviroment/client_config.dart';

class Environment {

  static final Environment _environment = Environment._internal();
  EnviromentEnum env = EnviromentEnum.MOCKED;
  ClientConfig clientConfig = ClientConfig(EnviromentEnum.MOCKED);

  Environment._internal();

  factory Environment(){
    return _environment;
  }

  setEnviroment(EnviromentEnum env){
    this.env = env;
    clientConfig = ClientConfig(this.env);
  }

}

enum EnviromentEnum {
  TEST,
  PROD,
  MOCKED,
}
