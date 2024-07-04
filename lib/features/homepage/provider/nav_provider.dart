import 'package:flutter/material.dart';
import 'package:freshproject/features/calls/calls.dart';
import 'package:freshproject/features/contacts/contacts.dart';
import 'package:freshproject/features/homepage/homepage.dart';
import 'package:freshproject/features/settings/settings.dart';

class NavProvider extends ChangeNotifier {
  int currentIndex = 0;

  List<Widget> screens = [
    HomePage(),
    Calls(),
    Contacts(),
    Settings(),
  ];

  updateCurrentIndex(int value) {
    currentIndex = value;
    notifyListeners();
  }

  bool checkCurrentState(int value) {
    return currentIndex == value;
  }
}
