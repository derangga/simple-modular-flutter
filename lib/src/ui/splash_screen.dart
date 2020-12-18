import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<Timer> _startSplashScreen() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, _navigationPage);
  }

  void _navigationPage() {
    Navigator.pushReplacementNamed(context, RouteApp.LOGIN_SCREEN);
  }

  @override
  void initState() {
    super.initState();
    _startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'Splash Screen',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
