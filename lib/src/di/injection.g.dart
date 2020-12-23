// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injection.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injection extends Injection {
  @override
  void configure() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton<BaseOptions>((c) => DioOptions());
    container.registerSingleton<Interceptor>((c) => LoggingInterceptor());
    container.registerSingleton((c) => DefaultHttpClientAdapter());
    container.registerSingleton<Dio>((c) => DioModule(
        c<BaseOptions>(), c<Interceptor>(), c<DefaultHttpClientAdapter>()));
    container.registerSingleton((c) => AuthRemoteSource(c<Dio>()));
    container.registerFactory((c) => LoginBloc(c<AuthRemoteSource>()));
  }
}
