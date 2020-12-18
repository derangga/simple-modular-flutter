import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:setting/setting.dart';

import 'ui/home_screen.dart';
import 'ui/splash_screen.dart';

class RouteHandler {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteApp.SPLASH_SCREEN:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );

      case RouteApp.LOGIN_SCREEN:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case RouteApp.REGISTER_SCREEN:
        return MaterialPageRoute(builder: (_) => RegisterScreen());

      case RouteApp.HOME_SCREEN:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case RouteApp.SETTING_SCREEN:
        return MaterialPageRoute(builder: (_) => SettingScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => UndefinedView(
                  routeName: settings.name,
                ));
    }
  }
}
