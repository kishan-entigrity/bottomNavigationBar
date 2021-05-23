import 'package:bottombar_custom/home_fragment.dart';
import 'package:bottombar_custom/login_fragment.dart';
import 'package:bottombar_custom/profile_fragment.dart';
import 'package:bottombar_custom/signup_fragment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageStorageBucket bucket = PageStorageBucket();

  // Widget currentScreen = HomeFragment(changeTabPosition0, changeTabPosition1, changeTabPosition2, changeTabPosition3);
  Widget currentScreen = HomeFragment();
  int currentTab = 0;
  GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');

  // static int _selectedIndex = 0;
  static int selectedIndexN = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions1 = <Widget>[
    // HomeFragment(changeTabPosition0, changeTabPosition1, changeTabPosition2, changeTabPosition3),
    HomeFragment(),
    LoginFargment(),
    SignUpFargment(),
    // ProfileFargment((){changeTabMethod(0)}),
    ProfileFargment(),
  ];

  /*static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];*/

  void changeTabPosition0() {
    setState(() {
      selectedIndexN = 0;
    });
  }

  void changeTabPosition1() {
    setState(() {
      selectedIndexN = 1;
    });
  }

  void changeTabPosition2() {
    setState(() {
      selectedIndexN = 2;
    });
  }

  void changeTabPosition3() {
    setState(() {
      selectedIndexN = 3;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      // ConstClass.selectedIndex = index;
      selectedIndexN = index;
    });
  }

  void changeTabMethod(int index) {
    print('changeTabMethod is called');
    setState(() {
      // ConstClass.selectedIndex = index;
      selectedIndexN = index;
    });
    print('changeTabMethod is called : selectedIndexN : $selectedIndexN');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // return GetBuilder<DashboardController>(
      body: Center(
        child: _widgetOptions1.elementAt(selectedIndexN),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.tealAccent,
        key: globalKey,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'SignUp',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Profile',
          ),
        ],
        // currentIndex: _selectedIndex,
        // currentIndex: ConstClass.selectedIndex,
        currentIndex: selectedIndexN,
        selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
        onTap: changeTabMethod,
      ),
    );
  }
}
