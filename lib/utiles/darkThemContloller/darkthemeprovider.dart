import 'package:flutter/cupertino.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemepref.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemPrefs darkThemePrefs = DarkThemPrefs();

  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePrefs.setDarkTheme(value);
    notifyListeners();
  }
}
