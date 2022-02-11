import 'package:investment_management/domain/user.dart';
import 'package:investment_management/infra/gateway/user_gateway.dart';
import 'package:investment_management/infra/gateway/user_gateway_impl.dart';
import 'package:investment_management/usecase/save_user.dart';

class SaveUserUseCaseImpl implements SaveUserUseCase {
  static final SaveUserUseCaseImpl _singleton = SaveUserUseCaseImpl._internal();

  UserGateway userGateway = UserGatewayImpl();

  factory SaveUserUseCaseImpl() {
    return _singleton;
  }

  SaveUserUseCaseImpl._internal();

  @override
  execute(User user) {
    userGateway.save(user.login);
  }
}
