import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';

class juzaaScreen extends StatefulWidget {
  const juzaaScreen({Key? key}) : super(key: key);

  @override
  _RukiaScreenState createState() => _RukiaScreenState();
}

class _RukiaScreenState extends State<juzaaScreen> {
  @override
  Widget build(BuildContext context) {
    final themechange = Provider.of<DarkThemeProvider>(context);
    return MaterialApp(
      color: themechange.darkTheme ? Colors.black : Colors.white,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              gotToBack();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 25,
              color: themechange.darkTheme ? Colors.white : Colors.black,
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.purple,
        ),
      )),
    );
  }

  void gotToBack() {
    Navigator.pop(context);
  }
}
