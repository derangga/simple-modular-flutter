import 'package:auth/src/ui/login/login_bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../auth.dart';
import '../../../auth.dart';
import '../../../auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseState<LoginBloc, LoginState, LoginScreen> {
  @override
  LoginBloc blocProvider() {
    return BlocProvider.of<LoginBloc>(context);
  }

  @override
  Widget mapStateToWidget(LoginState state) {
    if (state is SuccessLoginState) {
      bloc.add(InitLoginEvent()); // reset the state before navigate
      executeUiAfterBuild((duration) {
        Navigator.pushReplacementNamed(context, RouteApp.HOME_SCREEN);
      });
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: BlocBuilder<LoginBloc, LoginState>(builder: (blocCtx, state) {
        mapStateToWidget(state);
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                  visible: state is LoadingLoginState,
                  child: CircularProgressIndicator()),
              RaisedButton(
                  child: Text('Do Login'),
                  onPressed: () {
                    bloc.add(PostLoginEvent());
                  }),
              RaisedButton(
                  child: Text('To register'),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteApp.REGISTER_SCREEN);
                  })
            ],
          ),
        );
      }),
    );
  }
}
