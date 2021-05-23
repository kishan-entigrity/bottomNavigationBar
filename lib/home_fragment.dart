import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFragment extends StatefulWidget {
  // HomeFragment(this.changeTabPosition0, this.changeTabPosition1, this.changeTabPosition2, this.changeTabPosition3);
  // final Function changeTabPosition0;
  // final Function changeTabPosition1;
  // final Function changeTabPosition2;
  // final Function changeTabPosition3;

  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Text('Home Fragment'),
        ),
      ),
    );
  }
}
