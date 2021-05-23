import 'package:bottombar_custom/ConstClass.dart';
import 'package:bottombar_custom/home_fragment.dart';
import 'package:bottombar_custom/login_fragment.dart';
import 'package:bottombar_custom/signup_fragment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenNew extends StatefulWidget {
  // static HomeScreenNew of(BuildContext context) => context.ancestorStateOfType(const TypeMatcher<_HomeScreenNewState>());
  // HomeScreenNew(this.stream);
  // final Stream<int> stream;
  // HomeScreenNew(this.onPressTab);
  // final Function onPressTab;

  @override
  // _HomeScreenNewState createState() => _HomeScreenNewState(onPressTab);
  _HomeScreenNewState createState() => _HomeScreenNewState();
}

class _HomeScreenNewState extends State<HomeScreenNew> {
  final PageStorageBucket bucket = PageStorageBucket();
  // _HomeScreenNewState(this.onPressTab);
  // final Function onPressTab;

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
    SignUpFargment(),
    // ProfileFargment(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ConstClass.currentScreen = HomeFragment();
    currentScreen = HomeFragment();
    /*widget.stream.listen((index) {
      if (index == 0) {
        // ConstClass.clickEventHome();
        clickEventHome();
      } else if (index == 1) {
        // ConstClass.clickEventLogin();
        clickEventLogin();
      } else if (index == 2) {
        // ConstClass.clickEventSignUp();
        clickEventSignUp();
      } else if (index == 3) {
        // ConstClass.clickEventProfile();
        clickEventProfile();
      }
    });*/
  }

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

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      // return GetBuilder<DashboardController>(
      body: Center(
        // child: _widgetOptions.elementAt(_selectedIndex),
        // child: _widgetOptions1.elementAt(_selectedIndex),
        // child: _widgetOptions1.elementAt(ConstClass.selectedIndex),
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
        onTap: _onItemTapped,
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F9),
      body: PageStorage(
        // child: ConstClass.currentScreen,
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          width: double.infinity,
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    clickEventHome();
                    ConstClass.clickEventHome();
                  });
                },
                child: Expanded(
                  child: Container(
                    height: 80.0,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/home.png',
                          height: 18.0,
                          width: 18.0,
                          // color: ConstClass.currentTab == 0 ? Color(0xFF193F70) : Color(0xFFABAAAA),
                          color: currentTab == 0 ? Color(0xFF193F70) : Color(0xFFABAAAA),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          'Home',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    clickEventLogin();
                    // ConstClass.clickEventLogin();
                  });
                },
                child: Expanded(
                  child: Container(
                    height: 80.0,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/login_icon.png',
                          height: 18.0,
                          width: 18.0,
                          // color: ConstClass.currentTab == 1 ? Color(0xFF193F70) : Color(0xFFABAAAA),
                          color: currentTab == 1 ? Color(0xFF193F70) : Color(0xFFABAAAA),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          'Login',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    clickEventSignUp();
                    // ConstClass.clickEventSignUp();
                  });
                },
                child: Expanded(
                  child: Container(
                    height: 80.0,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/signup_icon.png',
                          height: 18.0,
                          width: 18.0,
                          // color: ConstClass.currentTab == 2 ? Color(0xFF193F70) : Color(0xFFABAAAA),
                          color: currentTab == 2 ? Color(0xFF193F70) : Color(0xFFABAAAA),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          'SignUp',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    clickEventProfile();
                    // ConstClass.clickEventProfile();
                  });
                },
                child: Expanded(
                  child: Container(
                    height: 80.0,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/menu_icon.png',
                          height: 18.0,
                          width: 18.0,
                          // color: ConstClass.currentTab == 3 ? Color(0xFF193F70) : Color(0xFFABAAAA),
                          color: currentTab == 3 ? Color(0xFF193F70) : Color(0xFFABAAAA),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          'Menu',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void clickEventTab(int index) {
    if (index == 0) {
      setState(() {
        ConstClass.currentScreen = HomeFragment();
        ConstClass.currentTab = 0;
      });
    } else if (index == 1) {
      setState(() {
        ConstClass.currentScreen = LoginFargment();
        ConstClass.currentTab = 1;
      });
    } else if (index == 2) {
      setState(() {
        ConstClass.currentScreen = SignUpFargment();
        ConstClass.currentTab = 2;
      });
    } else if (index == 3) {
      setState(() {
        // ConstClass.currentScreen = ProfileFargment();
        ConstClass.currentScreen = SignUpFargment();
        ConstClass.currentTab = 3;
      });
    }
  }

  // static void clickEventHome() {
  void clickEventHome() {
    print('ClickEventHome is called');
    setState(() {
      // ConstClass.currentScreen = HomeFragment();
      currentScreen = HomeFragment();
      // ConstClass.currentTab = 0;
      currentTab = 0;
    });
    print('currentScreen : $currentScreen');
  }

  // static void clickEventLogin() {
  void clickEventLogin() {
    setState(() {
      // ConstClass.currentScreen = LoginFargment();
      currentScreen = LoginFargment();
      // ConstClass.currentTab = 1;
      currentTab = 1;
    });
  }

  // static void clickEventSignUp() {
  void clickEventSignUp() {
    setState(() {
      // ConstClass.currentScreen = SignUpFargment();
      currentScreen = SignUpFargment();
      // ConstClass.currentTab = 2;
      currentTab = 2;
    });
  }

  // static void clickEventProfile() {
  void clickEventProfile() {
    setState(() {
      // ConstClass.currentScreen = ProfileFargment();
      // currentScreen = ProfileFargment();
      currentScreen = SignUpFargment();
      // ConstClass.currentTab = 3;
      currentTab = 3;
    });
  }
}
