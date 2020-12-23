import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:kiwi/kiwi.dart';

part 'injection.g.dart';

abstract class Injection {
  @Register.singleton(BaseOptions, from: DioOptions)
  @Register.singleton(Interceptor, from: LoggingInterceptor)
  @Register.singleton(DefaultHttpClientAdapter)
  @Register.singleton(Dio, from: DioModule, resolvers: {
    BaseOptions: null,
    Interceptor: null,
    DefaultHttpClientAdapter: null
  })
  @Register.singleton(AuthRemoteSource, resolvers: {Dio: null})
  @Register.factory(LoginBloc, resolvers: {AuthRemoteSource: null})
  void configure();
}

class AppModule {
  static void setup() {
    var injection = _$Injection();
    injection.configure();
  }
}
