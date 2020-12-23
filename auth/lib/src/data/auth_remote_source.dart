import 'dart:async';

import 'package:core/core.dart';

class AuthRemoteSource extends BaseRemote {
  AuthRemoteSource(Dio dio) : super(dio);

  Future<bool> postLogin() async {
    await Future.delayed(Duration(seconds: 1)); // simulate login
    return true;
  }
}
