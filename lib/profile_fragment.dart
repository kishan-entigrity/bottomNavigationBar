import 'package:bottombar_custom/profile_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ConstClass.dart';

class ProfileFargment extends StatefulWidget {
  // ProfileFargment(this.changeTab);
  // Function(int) changeTab;
  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFargment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new WillPopScope(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            height: double.infinity,
            width: double.infinity,
            color: Colors.teal,
            child: Column(
              children: <Widget>[
                Text('Profile Fragment'),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 40.0,
                  width: 150.0,
                  color: Colors.white,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileDetails(),
                        ),
                      );
                    },
                    child: Center(child: Text('Profile')),
                  ),
                ),
              ],
            ),
          ),
        ),
        onWillPop: _onWillPop,
      ),
    );
  }

  Future<bool> _onWillPop() {
    print('Have to redirect to home fragment');
    // HomeScreen._selectedIndex = 0;
    setState(() {
      // HomeScreen().createState().changeTabMethod(0);
      ConstClass.selectedIndexN = 0;
      // HomeScreen().createState().changeTabPosition0();
    });
    // widget.changeTab(0);
    /*setState(() {
      // ConstClass.selectedIndex = 0;
      // ConstClass.clickEventHome();
      // HomeScreenNew().createState().clickEventHome();
      HomeScreen().createState().changeTabMethod(0);
      // HomeScreenNew.of(context).Hom
    });*/
  }
}
