import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = false;

  void toggleTheme() {
    isDarkModeOn = !isDarkModeOn;
    notifyListeners(); // 이걸 구독하고 있는 widget은 모두 reload 될 것
  }
}