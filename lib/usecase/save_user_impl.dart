import 'package:investment_management/domain/user.dart';
import 'package:investment_management/infra/gateway/user_gateway.dart';
import 'package:investment_management/infra/gateway/user_gateway_impl.dart';
import 'package:investment_management/usecase/save_user.dart';

class SaveUserUseCaseImpl implements SaveUserUseCase {
  UserGateway userGateway = UserGatewayImpl();

  @override
  execute(User user) {
    userGateway.save(user.login);
  }
}
