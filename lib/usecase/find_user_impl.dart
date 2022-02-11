import 'package:investment_management/domain/user.dart';
import 'package:investment_management/infra/gateway/user_gateway.dart';
import 'package:investment_management/infra/gateway/user_gateway_impl.dart';
import 'package:investment_management/usecase/find_user.dart';

class FindUserUseCaseImpl implements FindUserUseCase {
  UserGateway userGateway = UserGatewayImpl();

  @override
  User execute() {
    return User(login: userGateway.find());
  }
}
