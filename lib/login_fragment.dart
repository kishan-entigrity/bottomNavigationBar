import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginFargment extends StatefulWidget {
  @override
  _LoginFragmentState createState() => _LoginFragmentState();
}

class _LoginFragmentState extends State<LoginFargment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Text('Login Fragment'),
        ),
      ),
    );
  }
}
