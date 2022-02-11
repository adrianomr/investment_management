import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:investment_management/domain/user.dart';
import 'package:investment_management/infra/presenter/user_presenter.dart';
import 'package:investment_management/usecase/save_user.dart';
import 'package:investment_management/usecase/save_user_impl.dart';

class UserPresenterImpl extends BlocBase implements UserPresenter {
  static final UserPresenterImpl _singleton = UserPresenterImpl._internal();
  SaveUserUseCase saveUserUseCase = SaveUserUseCaseImpl();

  factory UserPresenterImpl() {
    return _singleton;
  }

  UserPresenterImpl._internal();

  @override
  void login(String login) {
    saveUserUseCase.execute(User(login: login));
  }
}
