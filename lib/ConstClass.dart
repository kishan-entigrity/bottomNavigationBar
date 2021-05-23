import 'dart:async';

import 'package:bottombar_custom/profile_fragment.dart';
import 'package:bottombar_custom/signup_fragment.dart';
import 'package:flutter/material.dart';

import 'home_fragment.dart';
import 'login_fragment.dart';

class ConstClass {
  static int _selectedIndex = 0;
  static int selectedIndex = 0;
  static int arrCountState = 0;

  static int currentTab = 0;
  static Widget currentScreen;

  static void clickEventHome() {
    ConstClass.currentScreen = HomeFragment();
    ConstClass.currentTab = 0;
  }

  static void clickEventLogin() {
    ConstClass.currentScreen = LoginFargment();
    ConstClass.currentTab = 1;
  }

  static void clickEventSignUp() {
    ConstClass.currentScreen = SignUpFargment();
    ConstClass.currentTab = 2;
  }

  static void clickEventProfile() {
    ConstClass.currentScreen = ProfileFargment();
    ConstClass.currentTab = 3;
  }

  StreamController<int> streamController = StreamController<int>();
}
