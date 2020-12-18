import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting')),
      body: Center(
        child: RaisedButton(
            child: Text('Logout'),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, RouteApp.LOGIN_SCREEN, (route) => false);
            }),
      ),
    );
  }
}
