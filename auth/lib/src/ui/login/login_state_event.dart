part of 'login_bloc.dart';

abstract class LoginEvent extends BlocEvent {}

abstract class LoginState extends BlocState {}

class InitLoginState implements LoginState {}

class InitLoginEvent implements LoginEvent {}

class PostLoginEvent implements LoginEvent {}

class SuccessLoginState implements LoginState {}

class LoadingLoginState implements LoginState {}
