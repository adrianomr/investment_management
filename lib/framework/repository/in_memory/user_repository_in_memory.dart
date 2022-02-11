import '../user_repository.dart';

class UserRepositoryInMemory implements UserRepository {
  static final UserRepositoryInMemory _singleton =
      UserRepositoryInMemory._internal();

  String login = '';

  factory UserRepositoryInMemory() {
    return _singleton;
  }

  UserRepositoryInMemory._internal();

  @override
  String find() {
    return login;
  }

  @override
  void save(String login) {
    this.login = login;
  }
}
