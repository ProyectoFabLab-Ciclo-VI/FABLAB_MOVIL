import 'package:flutter/material.dart';

class LoginRegisterController extends ChangeNotifier {
  int _selectedIndex = 0; // 0 for login, 1 for register

  int get selectedIndex => _selectedIndex;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
