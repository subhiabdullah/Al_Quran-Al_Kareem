import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';
import 'package:quran/quran.dart' as quran;

class AlfalakScreen extends StatefulWidget {
  const AlfalakScreen({Key? key}) : super(key: key);

  @override
  _AlfatehafarScreenState createState() => _AlfatehafarScreenState();
}

class _AlfatehafarScreenState extends State<AlfalakScreen> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  late String _string = "";
  String string = "";
  @override
  void initState() {
    // TODO: implement initState

    _string = getVerses();
    string = ' صدق الله العظيم ';
  }

  getVerses() {
    String verses = "";
    for (int i = 0; i < quran.getVerseCount(113); i++) {
      verses += quran.getVerse(113, i + 1, verseEndSymbol: true);
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
                            padding: const EdgeInsets.only(top: 10, bottom: 15),
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
                            _string,
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
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 300.0),
                            child: Text(
                              string,
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
          ),
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            height: 50.0,
            items: <Widget>[
              Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.music_note,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.book,
                size: 30,
                color: Colors.white,
              ),
            ],
            color: Colors.purple,
            buttonBackgroundColor: Colors.purple,
            backgroundColor: Colors.white,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 500),
            onTap: (index) {
              setState(() {
                _page = index;
                if (index == 0) {
                  setState(() {
                    _string = getVerses();
                    string = 'صدق الله العظيم';
                  });
                } else if (index == 1) {
                  setState(() {
                    _string = '';
                    string = '';
                    // Container(child: popupmenuAlkuraa(themechange: themechange),);
                  });
                } else if (index == 2) {
                  setState(() {
                    _string = 'gggg';
                    string = '';
                  });
                }
              });
            },
            letIndexChange: (index) => true,
          ),
        ),
      ),
    );
  }

  void gotToBack() {
    Navigator.pop(context);
  }
}
