import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';

class MasbahaAlctroniaScreen extends StatefulWidget {
  const MasbahaAlctroniaScreen({Key? key}) : super(key: key);

  @override
  _DuaaAlsafarScreenState createState() => _DuaaAlsafarScreenState();
}

class _DuaaAlsafarScreenState extends State<MasbahaAlctroniaScreen> {
  int number = 0;
  @override
  void initState() {
    // TODO: implement initState
    setState(() {});
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
              Positioned(
                top: height * 0.02,
                left: width * 0.15,
                child: Text(
                  "المسبحة الالكترونية",
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: themechange.darkTheme ? Colors.white : Colors.black,
                  ),
                ),
              ),
              Positioned(
                  top: height * 0.25,
                  left: width * 0.3,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.tealAccent[400],
                    child: Text(
                      number.toString(),
                      style: TextStyle(
                          color: themechange.darkTheme
                              ? Colors.white
                              : Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Positioned(
                  top: height * 0.60,
                  left: width * 0.10,
                  child: Row(
                    children: [
                      MaterialButton(
                        shape: StadiumBorder(),
                        color: Colors.tealAccent[400],
                        onPressed: () {
                          backNumberToZero();
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.exposure_zero_sharp,
                              size: 50,
                              color: themechange.darkTheme
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            Text('العودة من البداية ',
                                style: TextStyle(
                                    color: themechange.darkTheme
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: MaterialButton(
                          shape: StadiumBorder(),
                          color: Colors.tealAccent[400],
                          onPressed: () {
                            plusOneNumper();
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.fingerprint,
                                size: 50,
                                color: themechange.darkTheme
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              Text('ابدأ التسبيح',
                                  style: TextStyle(
                                      color: themechange.darkTheme
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))
            ]),
          ),
        ),
      ),
    );
  }

  void gotToBack() {
    Navigator.pop(context);
  }

  void plusOneNumper() {
    setState(() {
      number += 1;
    });
  }

  void backNumberToZero() {
    setState(() {
      number = 0;
    });
  }
}
