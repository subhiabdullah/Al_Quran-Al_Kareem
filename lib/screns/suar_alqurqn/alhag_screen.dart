import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';
import 'package:quran/quran.dart' as quran;

class AlHagScreen extends StatefulWidget {
  const AlHagScreen({Key? key}) : super(key: key);

  @override
  _AlfatehafarScreenState createState() => _AlfatehafarScreenState();
}

class _AlfatehafarScreenState extends State<AlHagScreen> {
  getVerses() {
    String verses = "";
    for (int i = 0; i < quran.getVerseCount(22); i++) {
      verses += quran.getVerse(22, i + 1, verseEndSymbol: true);
    }
    return verses;
  }

  @override
  Widget build(BuildContext context) {
    final themechange = Provider.of<DarkThemeProvider>(context);
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              backgroundColor:
                  themechange.darkTheme ? Colors.grey[800] : Colors.white,
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
                color: themechange.darkTheme
                    ? Colors.grey[800]
                    : Colors.tealAccent[400],
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                        left: 0,
                        bottom: 4,
                        child: Opacity(
                          opacity: 0.2,
                          child: Image.asset('assets/images/quraan3.png'),
                        )),
                    ListView(children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 15),
                                child: Text(
                                  quran.getBasmala(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: themechange.darkTheme
                                          ? Colors.white
                                          : Colors.black,
                                      fontFamily: 'Tajawal',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                              Text(
                                getVerses(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: themechange.darkTheme
                                        ? Colors.white
                                        : Colors.black,
                                    fontFamily: 'Tajawal',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 300.0),
                                child: Text(
                                  "صدق الله العظيم",
                                  style: TextStyle(
                                      color: themechange.darkTheme
                                          ? Colors.white
                                          : Colors.black,
                                      fontFamily: 'Tajawal',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ))),
    );
  }

  void gotToBack() {
    Navigator.pop(context);
  }
}
