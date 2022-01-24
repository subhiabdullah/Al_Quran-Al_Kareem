import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';

class DuaaSagdatAltelawaScreen extends StatefulWidget {
  const DuaaSagdatAltelawaScreen({Key? key}) : super(key: key);

  @override
  _DuaaAlsafarScreenState createState() => _DuaaAlsafarScreenState();
}

class _DuaaAlsafarScreenState extends State<DuaaSagdatAltelawaScreen> {
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
                        " دعاْء سجوْد التلاوة ",
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
                              " عن عائشة أم المؤمنين -رضي الله عنها- قالت: “كان النَّبي صلَّى الله عليه وسلَّم يقولُ في سجودِ القرآنِ بالليلِ: سجدَ وجهي للذِي خلقهُ وشقَّ سمعهُ وبصرهُ بحولهِ وقوتهِ”.",
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
                              " جاء عن عبد الله بن عباس -رضي الله عنه- ما يأتي: “جاء رجلٌ إلى النبيِّ صلَّى اللهُ عليهِ وسلَّم فقال : يا رسولَ اللهِ، إني رأيتُنِي الليلةَ وأنا نائمٌ، كأني أُصَلِّي خلفَ شجرةٍ، فسجدتُ فسجَدَتِ الشجرةُ لسُجُودِي، فسَمِعْتُها وهي تقولُ: اللهم اكتُبْ لِي بها عندَك أَجْرًا، وضَعْ عني بها وِزْرًا، واجعلْها لي عندك ذُخْرًا، وتَقَبَّلْها مِنِّي كما تَقَبَّلْتَها من عبدِكَ دَاوُدَ”. ",
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
