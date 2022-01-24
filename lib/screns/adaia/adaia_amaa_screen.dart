import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';

class AdaiaAmaaScreen extends StatefulWidget {
  const AdaiaAmaaScreen({Key? key}) : super(key: key);

  @override
  _DuaaAlsafarScreenState createState() => _DuaaAlsafarScreenState();
}

class _DuaaAlsafarScreenState extends State<AdaiaAmaaScreen> {
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
                        " أدعية من السنة ",
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
                          " اللهم لك الحمد أنت نور السماوات والأرض ومن فيهن ولك الحمد، أنت قيوم السماوات والأرض ومن فيهن ولك الحمد، أنت الحق، ووعدك الحق، ولقاؤك حق، والجنة حق، والنار حق، والنبيون حق، والساعة حق، ومحمد حق، اللهم لك أسلمت، وبك آمنت، وعليك توكلت، وإليك أنبت، وبك خاصمت، وإليك حاكمت، فاغفر لى ما قدمت وما أخرت، وما أسررت وما أعلنت، أنت إلهى لا إله إلا أنت. ",
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
                          "  متفق عليه ",
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
                          " ((اللهم أحيني على سنة نبيك وتوفني على ملته، وأعذني من مضلات الفتن)) ",
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
                          " أخرجه البيهقي في الكبرى، 5/ 95 ",
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
                          " ((أستغفر الله العظيم الذي لا إله إلا هو، الحي القيوم، وأتوب إليه)) ",
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
                          " صححه الألباني في صحيح الترمذي، 3/ 469 ",
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
                          " ((اللهم اهدني فيمن هديت، وعافني فيمن عافيت، وتولني فيمن توليت، وبارك لي فيما أعطيت، وقني شرما قضيت، إنه لا يذل من واليت، تباركت ربنا وتعاليت)) ",
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
                          " أحمد في المسند، 3/ 249، برقم 1723 ",
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
                          " ((اللهم إني أعوذ بك من عذاب النار، وأعوذ بك من عذاب القبر، وأعوذ بك من الفتن ما ظهر منها وما بطن، وأعوذ بك من فتنة الدجال)) ",
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
                          " أخرجه مسلم، برقم 2867 ",
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
                          " ((اللهم إني أعوذ بك من علم لا ينفع، وعمل لا يرفع، وقلب لا يخشع، وقول لا يسمع)) ",
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
                          " صححه الألباني في صحيح موارد الظمآن ",
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
                          " ((اللهم إني أعوذ بك من جار السوء، ومن زوج تشيبني قبل المشيب، ومن ولد يكون علي ربا، ومن مال يكون علي عذابا، ومن خليل ماكر عينه تراني، وقلبه يرعاني؛ إن رأى حسنة دفنها، وإذا رأى سيئة أذاعها)) ",
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
                          " قال الألباني في سلسلة الأحاديث الصحيحة، 7/ 377، برقم 3137 ",
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
                          " ((اللهم إني أعوذ بك من صلاة لا تنفع)) ",
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
                          "  صححه الألباني في صحيح سنن أبي داود، 1/ 424. ",
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
                          " ((اللهم إني أسألك الثبات في الأمر، والعزيمة على الرشد، وأسألك موجبات رحمتك، وعزائم مغفرتك، وأسألك شكر نعمتك، وحسن عبادتك، وأسألك قلبا سليما، ولسانا صادقا، وأسألك من خير ما تعلم، وأعوذ بك من شر ما تعلم، وأستغفرك لما تعلم، إنك أنت علام الغيوب)) ",
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
                          " وذكره الألباني سلسلة الأحاديث الصحيحة برقم 3228 ",
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
                          " ((اللهم زدنا ولا تنقصنا، وأكرمنا ولا تهنا، وأعطنا ولا تحرمنا، وآثرنا ولا تؤثر علينا، وأرضنا وارض عنا)) ",
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
                          " الترمذي، 5/ 326، برقم 3173 ",
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
                          " ((اللهم قني شر نفسي، واعزم لي على أرشد أمري، اللهم اغفر لي ما أسررت، وما أعلنت، وما أخطأت، وما عمدت، وما علمت، وما جهلت)) ",
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
                          " صححه الألباني في تخريج رياض الصالحين ",
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
                          " ((اللهم ألف بين قلوبنا، وأصلح ذات بيننا، واهدنا سبل السلام، ونجنا من الظلمات إلى النور، وجنبنا الفواحش ما ظهر منها وما بطن، وبارك لنا في أسماعنا، وأبصارنا، وقلوبنا، وأزواجنا، وذرياتنا، وتب علينا إنك أنت التواب الرحيم، واجعلنا شاكرين لنعمك مثنين بها عليك، قابلين لها، وأتممها علينا)) ",
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
                          " صححه الألباني في صحيح الأدب المفرد، برقم 630  ",
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
                          " ((اللهم إنا نسألك موجبات رحمتك، وعزائم مغفرتك، والسلامة من كل إثم، والغنيمة من كل بر، والفوز بالجنة، والنجاة من النار)) ",
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
                          " صححه الحاكم ووافقه الذهبى ",
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
                          " ((اللهم اغفر لي خطيئتي، وجهلي، وإسرافي في أمري، وما أنت أعلم به مني، اللهم اغفر لي هزلي، وجدي، وخطئي، وعمدي، وكل ذلك عندي)) ",
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
                          " متفق عليه: البخاري، برقم 6398، ومسلم، برقم 2719 ",
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
                          "لا إله إلا الله العظيم الحليم، لا إله إلا الله رب العرش العظيم، لا إله إلا الله رب السموات، ورب الأرض، ورب العرش الكريم ",
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
                          " البخاري، برقم 6345، ومسلم، برقم 2730 ",
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
