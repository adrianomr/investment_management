import 'package:investment_management/framework/in_memory/user_repository_in_memory.dart';
import 'package:investment_management/framework/user_repository.dart';

import 'user_gateway.dart';

class UserGatewayImpl implements UserGateway {
  UserRepository userRepository = UserRepositoryInMemory();

  @override
  String find() {
    return userRepository.find();
  }

  @override
  save(String login) {
    userRepository.save(login);
  }

}