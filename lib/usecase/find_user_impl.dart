import 'package:investment_management/domain/user.dart';
import 'package:investment_management/infra/gateway/user_gateway.dart';
import 'package:investment_management/infra/gateway/user_gateway_impl.dart';
import 'package:investment_management/usecase/find_user.dart';

class FindUserUseCaseImpl implements FindUserUseCase {
  static final FindUserUseCaseImpl _singleton = FindUserUseCaseImpl._internal();

  UserGateway userGateway = UserGatewayImpl();

  factory FindUserUseCaseImpl() {
    return _singleton;
  }

  FindUserUseCaseImpl._internal();

  @override
  User execute() {
    return User(login: userGateway.find());
  }
}
