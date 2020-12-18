import 'package:core/core.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text('To home'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, RouteApp.HOME_SCREEN);
                }),
            RaisedButton(
                child: Text('To register'),
                onPressed: () {
                  Navigator.pushNamed(context, RouteApp.REGISTER_SCREEN);
                })
          ],
        ),
      ),
    );
  }
}
