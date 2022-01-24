import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';

class DuaaAlrezakScreen extends StatefulWidget {
  const DuaaAlrezakScreen({Key? key}) : super(key: key);

  @override
  _DuaaAlsafarScreenState createState() => _DuaaAlsafarScreenState();
}

class _DuaaAlsafarScreenState extends State<DuaaAlrezakScreen> {
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
                        " أحاديث عن الرزق ",
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
                          " اللهم أغننا بحلالك عن حرامك، وتولنا فأنت أرحم الراحمين.. اللهم يا رازق السائلين، يا راحم المساكين، ويا ذا القوة المتين، ويا خير الناصرين، يا ولي المؤمنين، يا غيّاث المستغيثين، إياك نعبد وإيّاك نستعين، اللهم إني أسألك رزقًا واسعًا طيبًا من رزقك. ",
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
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          " عن أبي هريرة قال: جاءت فاطمة إلى رسول الله صلى الله عليه وسلم تسأله خادما فقال لها قولي: اللهم رب السماوات السبع ورب العرش العظيم ربنا ورب كل شيء أنت الظاهر فليس فوقك شيء، وأنت الباطن فليس دونك شيء، منزل التوراة والإنجيل والفرقان فالق الحب والنوى، أعوذ بك من شر كل شيء أنت آخذ بناصيته أنت الأول فليس قبلك شيء، وأنت الآخر فليس بعدك شيء. اقض عنا الدين واغننا من الفقر. ",
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
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          " عن أبي سعيد الخدري قال: دخل رسول الله صلى الله عليه وسلم المسجد ذات يوم، فإذا برجل من الأنصار يقال له أبو أمامة، فقال: يا أبا أمامة مالي أراك جالساً في المسجد في غير وقت الصلاة؟قال: هموم لزمتني وديون يا رسول الله، فقال: أفلا أعلمك كلاماً إذا قلته أذهب الله همك وقضى عنك دينك؟قلت: بلى يا رسول الله، قال: قل إذا أصبحت وإذا أمسيت: اللهم إني أعوذ بك من الهم والحزن، وأعوذ بك من العجز والكسل، وأعوذ بك من الجبن والبخل، وأعوذ بك من غلبة الدين وقهر الرجال.قال: فقلت ذلك، فأذهب الله تعالى همي وغمي وقضى ديني. ",
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
                          " رواه أبو داود ",
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
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          " ومن المأثور عن رسول الله صلى الله عليه وسلم أنه اعتاد قول: اللهم إني أعوذ بك من الفقر والقلة والذلة، وأعوذ بك أن أظلم أو أظلم، ",
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
                          " رواه الإمام أحمد. ",
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
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          " وقد ورد أيضًا قول النبي صلى الله عليه وسلم: اللهم رب السماوات ورب الأرض ورب العرش العظيم، ربنا ورب كل شيء، فالق الحب والنوى ومنزل التوراة والإنجيل والفرقان، أعوذ بك من شر كل شيء أنت آخذ بناصيته، اللهم أنت الأول فليس قبلك شيء وأنت الآخر فليس بعدك شيء، وأنت الظاهر فليس فوقك شيء، وأنت الباطن فليس دونك. شيء اقض عنا الدين وأغننا من الفقر. ",
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: themechange.darkTheme
                                ? Colors.white
                                : Colors.black,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          " رواه مسلم. ",
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
