import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';

class DuaaNabiAllahyounousScreen extends StatefulWidget {
  const DuaaNabiAllahyounousScreen({Key? key}) : super(key: key);

  @override
  _DuaaAlsafarScreenState createState() => _DuaaAlsafarScreenState();
}

class _DuaaAlsafarScreenState extends State<DuaaNabiAllahyounousScreen> {
  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    final themechange = Provider.of<DarkThemeProvider>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
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
            backgroundColor: themechange.darkTheme
                ? Colors.grey[800]
                : Colors.tealAccent[400],
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: themechange.darkTheme ? Colors.grey[850] : Colors.white,
            child: Stack(fit: StackFit.expand, children: [
              Positioned(
                left: 0,
                bottom: 4,
                child: Opacity(
                  opacity: 0.2,
                  child: Image.asset('assets/images/quraan3.png'),
                ),
              ),
              ListView(children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        " دعاء نبي الله يونس ",
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: themechange.darkTheme
                              ? Colors.white
                              : Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          " يقولُ النبيُّ صلَّى الله عليه وسلَّم: «دعوةُ ذِي النُّونِ إِذْ دَعا بها وهُو في بَطْنِ الحُوتِ: لَا إلَهَ إلَّا أنت سبحانَكَ إني كنتُ من الظَّالمينَ. لَم يَدْعُ بها رَجُلٌ في شيءٍ قطُّ إلَّا اسْتَجَابَ اللهُ لَه». ",
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: themechange.darkTheme
                                ? Colors.white
                                : Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          " أخرجَه أحمدُ والتِّرمذيُّ ",
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: themechange.darkTheme
                                ? Colors.lightGreen
                                : Colors.blue,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Divider(
                        height: 8.0,
                        thickness: 1.0,
                        color: themechange.darkTheme
                            ? Colors.blue
                            : Colors.tealAccent[400],
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }

  void gotToBack() {
    Navigator.pop(context);
  }
}
