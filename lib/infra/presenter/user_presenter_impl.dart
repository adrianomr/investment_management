import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:investment_management/domain/user.dart';
import 'package:investment_management/infra/presenter/user_presenter.dart';
import 'package:investment_management/usecase/save_user.dart';
import 'package:investment_management/usecase/save_user_impl.dart';

class UserPresenterImpl extends BlocBase implements UserPresenter {
  SaveUserUseCase saveUserUseCase = SaveUserUseCaseImpl();
  @override
  void login(String login) {
    saveUserUseCase.execute(User(login: login));
  }

}