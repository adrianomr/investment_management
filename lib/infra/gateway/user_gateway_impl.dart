import 'package:investment_management/framework/repository/in_memory/user_repository_in_memory.dart';
import 'package:investment_management/framework/repository/user_repository.dart';

import 'user_gateway.dart';

class UserGatewayImpl implements UserGateway {
  static final UserGatewayImpl _singleton = UserGatewayImpl._internal();

  UserRepository userRepository = UserRepositoryInMemory();

  factory UserGatewayImpl() {
    return _singleton;
  }

  UserGatewayImpl._internal();

  @override
  String find() {
    return userRepository.find();
  }

  @override
  save(String login) {
    userRepository.save(login);
  }
}
