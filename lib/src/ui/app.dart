import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../route_handler.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Arch Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: RouteHandler.generateRoute,
      initialRoute: RouteApp.SPLASH_SCREEN,
    );
  }
}
