import 'package:core/core.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting',
            onPressed: () {
              Navigator.pushNamed(context, RouteApp.SETTING_SCREEN);
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
