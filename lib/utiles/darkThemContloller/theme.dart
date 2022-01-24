// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class ThemeProvider extends ChangeNotifier {
//   ThemeData? _selectedTheme;

//   ThemeData light = ThemeData.light().copyWith(
//     primaryColor: Colors.green,
//   );
//   ThemeData dark = ThemeData.dark().copyWith(
//     primaryColor: Colors.black,
//   );
//   ThemeProvider({required bool isDarkMode}) {
//     _selectedTheme = isDarkMode ? dark : light;
//   }
//   Future<Void> swapTheme() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     if (_selectedTheme == dark) {
//       _selectedTheme = light;
//       prefs.setBool("isDarkTheme", false);
//     } else {
//       _selectedTheme = dark;
//       prefs.setBool("isDarkTheme", true);
//     }
//     notifyListeners();
//     return swapTheme();
//   }

//   ThemeData? get getTheme => _selectedTheme;
// }
