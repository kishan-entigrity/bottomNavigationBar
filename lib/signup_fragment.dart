import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpFargment extends StatefulWidget {
  @override
  _SignUpFragmentState createState() => _SignUpFragmentState();
}

class _SignUpFragmentState extends State<SignUpFargment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Text('SignUp Fragment'),
        ),
      ),
    );
  }
}
