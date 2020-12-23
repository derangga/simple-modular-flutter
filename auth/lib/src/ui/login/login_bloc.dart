import 'package:auth/src/data/auth_remote_source.dart';
import 'package:core/core.dart';

part 'login_state_event.dart';

class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  AuthRemoteSource _remoteSource;

  LoginBloc(this._remoteSource) : super(InitLoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is InitLoginEvent) {
      yield InitLoginState();
    } else if (event is PostLoginEvent) {
      yield LoadingLoginState();
      await postLogin();
      yield SuccessLoginState();
    }
  }

  Future<bool> postLogin() async {
    var result = await _remoteSource.postLogin();
    return result;
  }
}
