import 'package:bottombar_custom/profile_fragment.dart';
import 'package:bottombar_custom/signup_fragment.dart';
import 'package:flutter/material.dart';

import 'home_fragment.dart';
import 'login_fragment.dart';

class HomeScreenTest extends StatefulWidget {
  @override
  _HomeScreenTestState createState() => _HomeScreenTestState();
}

class _HomeScreenTestState extends State<HomeScreenTest> {
  final PageStorageBucket bucket = PageStorageBucket();

  //       Widget currentScreen = HomeFragment();
  int currentTab = 0;

  static int selectedIndexN = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  Widget _widgetOptions1(int index) {
    switch (index) {
      case 0:
        return HomeFragment();
      case 1:
        return LoginFargment();
      case 2:
        return SignUpFargment();
      case 3:
        return ProfileFargment(onButtonPressed: changeTabMethod);
      default:
        return Container();
    }
  }

  /*List<Widget> _widgetOptions2 = <Widget>[
    // HomeFragment(changeTabPosition0, changeTabPosition1, changeTabPosition2, changeTabPosition3),
    HomeFragment(),
    LoginFargment(),
    SignUpFargment(),
    // ProfileFargment((){changeTabMethod(0)}),
    ProfileFargment(onButtonPressed: changeTabMethod),
  ];*/

  void changeTabMethod(int index) {
    print('changeTabMethod is called');
    setState(() {
      selectedIndexN = index;
    });
    print('changeTabMethod is called : selectedIndexN : $selectedIndexN');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // return GetBuilder<DashboardController>(
      body: Center(
        child: _widgetOptions1(selectedIndexN),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndexN,
        onTap: changeTabMethod,
        selectedItemColor: Colors.amber[800],
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
      ),
    );
  }
}

/*class HomeScreenTest extends StatefulWidget {
  @override
  _HomeScreenTestState createState() => _HomeScreenTestState();
}

class _HomeScreenTestState extends State<HomeScreenTest> {
  final PageStorageBucket bucket = PageStorageBucket();

  // Widget currentScreen = HomeFragment(changeTabPosition0, changeTabPosition1, changeTabPosition2, changeTabPosition3);
  Widget currentScreen = HomeFragment();
  int currentTab = 0;
  // GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');

  // static int _selectedIndex = 0;
  // static int selectedIndexN = 0;
  int selectedIndexN = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  Widget _widgetOptions2(int index) {
    switch (index) {
      case 0:
        return ProfileFargment(onButtonPressed: changeTabMethod);

      case 1:
        return Container(child: Text("Page - 2 "));

      case 2:
        return Container(child: Text("Page - 3 "));
      default:
        return Container();
    }
  }

  List<Widget> _widgetOptions1 = <Widget>[
    // HomeFragment(changeTabPosition0, changeTabPosition1, changeTabPosition2, changeTabPosition3),
    HomeFragment(),
    LoginFargment(),
    SignUpFargment(),
    // ProfileFargment((){changeTabMethod(0)}),
    ProfileFargment(onButtonPressed: changeTabMethod),
  ];

  */ /*static const List<Widget> _widgetOptions = <Widget>[
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
  ];*/ /*

  void changeTabPosition0() {
    print('changeTabPosition0 is called');
    setState(() {
      // ConstClass.selectedIndexN = 0;
      selectedIndexN = 0;
    });
    print('changeTabPosition0 is Executed');
  }

  void changeTabPosition1() {
    setState(() {
      // ConstClass.selectedIndexN = 1;
      selectedIndexN = 1;
    });
  }

  void changeTabPosition2() {
    setState(() {
      // ConstClass.selectedIndexN = 2;
      selectedIndexN = 2;
    });
  }

  void changeTabPosition3() {
    setState(() {
      // ConstClass.selectedIndexN = 3;
      selectedIndexN = 3;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      // ConstClass.selectedIndex = index;
      // ConstClass.selectedIndexN = index;
      selectedIndexN = index;
    });
  }

  void changeTabMethod(int index) {
    print('changeTabMethod is called');
    setState(() {
      // ConstClass.selectedIndex = index;
      // ConstClass.selectedIndexN = index;
      selectedIndexN = index;
    });
    // print('changeTabMethod is called : selectedIndexN : ${ConstClass.selectedIndexN}');
    print('changeTabMethod is called : selectedIndexN : ${selectedIndexN}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // return GetBuilder<DashboardController>(
      body: Center(
        // child: _widgetOptions1.elementAt(ConstClass.selectedIndexN),
        child: _widgetOptions1.elementAt(selectedIndexN),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.tealAccent,
        // key: globalKey,
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
        // currentIndex: ConstClass.selectedIndexN,
        currentIndex: selectedIndexN,
        selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
        onTap: changeTabMethod,
      ),
    );
  }
}*/
