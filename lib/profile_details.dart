import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatefulWidget {
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          height: double.infinity,
          width: double.infinity,
          color: Colors.teal,
          child: Center(
            child: Text('Profile Fragment'),
          ),
        ),
      ),
    );
  }
}
