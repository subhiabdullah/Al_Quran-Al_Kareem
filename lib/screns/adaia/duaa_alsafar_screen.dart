import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';

class DuaaAlsafarScreen extends StatefulWidget {
  const DuaaAlsafarScreen({Key? key}) : super(key: key);

  @override
  _DuaaAlsafarScreenState createState() => _DuaaAlsafarScreenState();
}

class _DuaaAlsafarScreenState extends State<DuaaAlsafarScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController iconController;
  bool isAnimated = false;
  bool showPlay = true;
  bool shoWpause = false;

  AssetsAudioPlayer player = AssetsAudioPlayer();

  @override
  void initState() {
    // TODO: implement initState

    player.open(
      Audio('assets/mp3/duaaAlsafarmp3.mp3'),
      autoStart: false,
      showNotification: true,
    );
    iconController = AnimationController(
        vsync: this, duration: Duration(microseconds: 1000));
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
                        "دعاء السفر",
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
                      Text(
                        "يقوله المسافر كما ورد عن الرسول -صلى الله عليه وسلم",
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
                      Text(
                        "في حديث صحيح عن الرسول -صلى الله عليه وسلم",
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "الله أكبر، الله أكبر، الله أكبر، سُبْحانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ وَإِنَّا إِلَى رَبِّنَا لَمُنقَلِبُونَ، اللهم إنا نسألُكَ في سفرنا هذا البرَّ والتقوى، ومن العمل ما ترضى، اللهم هون علينا سفرنا هذا واطو عنا بعده، اللهم أنت الصاحب في السفر، والخليفة في الأهل، اللهم إني أعوذ بك من وعْثاءِالسفر، وكآبة المنظر وسوء المنقلب في المال والأهل وإذا رجع قالهن وزاد فيهن «آيبون، تائبون، عابدون، لربنا حامدون» (رواه مسلم).",
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
                    ],
                  ),
                ),
              ]),
              Positioned(
                bottom: 1,
                left: 1,
                child: Container(
                  width: width,
                  color:
                      themechange.darkTheme ? Colors.grey[800] : Colors.white24,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          child: Image.asset(
                            "assets/images/alafasi.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            child: Icon(
                              CupertinoIcons.backward_fill,
                              color: themechange.darkTheme
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            onTap: () {
                              player.seekBy(Duration(seconds: -10));
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            animationIcon();
                          },
                          child: AnimatedIcon(
                            icon: AnimatedIcons.play_pause,
                            progress: iconController,
                            size: 50,
                            color: themechange.darkTheme
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            child: Icon(
                              CupertinoIcons.forward_fill,
                              color: themechange.darkTheme
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            onTap: () {
                              player.seekBy(
                                Duration(seconds: 10),
                              );
                            },
                          ),
                        ),
                      ]),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  void gotToBack() {
    Navigator.pop(context);
  }

  void animationIcon() {
    setState(() {
      isAnimated = !isAnimated;

      if (isAnimated) {
        iconController.forward();
        player.play();
      } else {
        iconController.reverse();
        player.pause();
      }
    });
  }
}
