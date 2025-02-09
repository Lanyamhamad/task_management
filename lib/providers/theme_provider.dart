import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  

  ThemeProvider() {
    _loadThemeFromPrefs();
  }

  void _loadThemeFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    notifyListeners();
  }

  void toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    notifyListeners();
  }

}