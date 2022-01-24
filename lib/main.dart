import 'package:flutter/material.dart';
import 'package:guraan_app/screns/screens_home.dart/luncher_scren.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkstyle.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:guraan_app/utiles/darkThemContloller/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider _darkThemeProvider = DarkThemeProvider();

  void getCurrentTheme() async {
    _darkThemeProvider.darkTheme =
        await _darkThemeProvider.darkThemePrefs.getTheme();
  }

  @override
  void initState() {
    getCurrentTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return _darkThemeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Quraan App',
            theme: ThemeStyles.themeData(_darkThemeProvider.darkTheme, context),
            home: const LuncherScren(),
          );
        },
      ),
    );
  }
}
