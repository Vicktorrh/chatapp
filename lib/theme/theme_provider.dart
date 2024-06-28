import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider() {
    theme = ThemeMode.dark;
  }

  ThemeMode theme = ThemeMode.system;

  void changeTheme(bool value) {
    if (value) {
      theme = ThemeMode.dark;
      notifyListeners();
    } else {
      theme = ThemeMode.light;
      notifyListeners();
    }
  }
}
