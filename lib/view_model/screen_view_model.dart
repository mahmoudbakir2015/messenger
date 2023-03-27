import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/calls_page.dart';
import '../view/home_chats.dart';
import '../view/story_page.dart';


class ScreenViewModel extends GetxController {
  Widget _currentScreen = HomeChats();
  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;
  get currentScreen => _currentScreen;

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          _currentScreen = HomeChats();
          break;
        }
      case 1:
        {
          _currentScreen = CallsPage();
          break;
        }
      case 2:
        {
          _currentScreen = Stories();
          break;
        }
    }
    update();
  }
}
