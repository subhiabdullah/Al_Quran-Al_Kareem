import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';

class DuaaAlzhabLlMasgedScreen extends StatefulWidget {
  const DuaaAlzhabLlMasgedScreen({Key? key}) : super(key: key);

  @override
  _DuaaAlsafarScreenState createState() => _DuaaAlsafarScreenState();
}

class _DuaaAlsafarScreenState extends State<DuaaAlzhabLlMasgedScreen> {
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
                        "دعاء الذهاب إلى المسجد",
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
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 8.0, right: 8.0),
                            child: Text(
                              " اللهم اجعل في قلبي نوراً ، وفي لساني نوراً ، وفي سمعي نوراً ، وفي بصري نوراً ، ومن فوقي نوراً ، ومن تحتي نوراً ، وعن يميني نوراً ، وعن شمالي نوراً ، ومن أمامي نوراً ، ومن خلفي نوراً  ، و اجعل في نفسي نوراً ، وأعظم لي نوراً ، وعظم لي نوراً ، واجعل لي نوراً ، واجعلني نوراً ، اللهم أعطني نوراً ، واجعل في عصبي نوراً ، وفي لحمي نوراً ، وفي دمي نوراً ، وفي شعري نوراً ، وفي بشري نوراً ",
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
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
                              " جميع هذه الخصال في البخاري 11/ 116 برقم 6316 ومسلم 1/ 526، 529 ، 530 برقم 763",
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
                          Padding(
                            padding: EdgeInsets.all(8.0),
                          ),
                          Divider(
                            height: 8.0,
                            thickness: 1.0,
                            color: themechange.darkTheme
                                ? Colors.blue
                                : Colors.tealAccent[400],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 8.0, right: 8.0),
                            child: Text(
                              "  [ اللهم اجعل لي نوراً في قبري .. ونوراً في عظامي ] ",
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
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
                              "  الترمذي برقم 3419، 5/483",
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
                          Padding(
                            padding: EdgeInsets.all(8.0),
                          ),
                          Divider(
                            height: 8.0,
                            thickness: 1.0,
                            color: themechange.darkTheme
                                ? Colors.blue
                                : Colors.tealAccent[400],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 8.0, right: 8.0),
                            child: Text(
                              " [ وزدني نوراً ، وزدني نوراً ، وزدني نوراً ] ",
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
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
                              "  أخرجه البخاري في الأدب المفرد برقم 695 ، ص 258 وصحح إسناده الألباني في صحيح الأدب المفرد برقم 536.",
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
                          Padding(
                            padding: EdgeInsets.all(8.0),
                          ),
                          Divider(
                            height: 8.0,
                            thickness: 1.0,
                            color: themechange.darkTheme
                                ? Colors.blue
                                : Colors.tealAccent[400],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 8.0, right: 8.0),
                            child: Text(
                              " [  وهب لي نوراً على نوراً ] ",
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
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
                              "  ذكره ابن حجر في فتح الباري وعزاه إلى ابن أبي عاصم في كتاب الدعاء،انظر الفتح11/118وقال:فاجتمع من اختلاف الروايات خمس وعشرون خصلة ",
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
                          Padding(
                            padding: EdgeInsets.all(8.0),
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
