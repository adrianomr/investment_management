class Environment {

  static final Environment _environment = Environment._internal();
  EnviromentEnum env = EnviromentEnum.MOCKED;
  Environment._internal();

  factory Environment(){
    return _environment;
  }

}

enum EnviromentEnum {
  TEST,
  PROD,
  MOCKED,
}
