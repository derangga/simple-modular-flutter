import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../route_handler.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
              create: (ctx) => KiwiContainer().resolve<LoginBloc>())
        ],
        child: MaterialApp(
          title: 'Flutter Clean Arch Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          onGenerateRoute: RouteHandler.generateRoute,
          initialRoute: RouteApp.SPLASH_SCREEN,
        ));
  }
}
