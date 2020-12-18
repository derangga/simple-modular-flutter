import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Container(
        child: Center(
          child: RaisedButton(
              child: Text('To Login'),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
      ),
    );
  }
}
