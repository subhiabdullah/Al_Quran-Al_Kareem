import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class RukiaScreen extends StatefulWidget {
  const RukiaScreen({Key? key}) : super(key: key);

  @override
  _RukiaScreenState createState() => _RukiaScreenState();
}

class _RukiaScreenState extends State<RukiaScreen>
    with SingleTickerProviderStateMixin {
  String pdfrukiapath = "assets/pdfs/rukiapdf.pdf";
  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _globalKey = GlobalKey();
  late AnimationController iconController;
  bool isAnimated = false;
  bool showPlay = true;
  bool shoWpause = false;

  String pathRukiaMp3 = "rukiamp3.mp3";
  AssetsAudioPlayer player = AssetsAudioPlayer();

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();

    super.initState();
    player.open(
      Audio('assets/mp3/rukiamp3.mp3'),
      autoStart: false,
      showNotification: true,
    );

    iconController = AnimationController(
        vsync: this, duration: Duration(microseconds: 1000));
  }

  @override
  @override
  Widget build(BuildContext context) {
    final themechange = Provider.of<DarkThemeProvider>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      color: themechange.darkTheme ? Colors.black : Colors.white,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: themechange.darkTheme ? Colors.black : Colors.white,
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
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      _pdfViewerController.zoomLevel = 1.75;
                    },
                    icon: Icon(
                      Icons.zoom_in,
                      size: 30,
                      color:
                          themechange.darkTheme ? Colors.white : Colors.black,
                    )),
              ],
            ),
            IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 1.0;
              },
              icon: Icon(
                Icons.zoom_out,
                size: 30,
                color: themechange.darkTheme ? Colors.white : Colors.black,
              ),
            ),
            IconButton(
                onPressed: () {
                  _globalKey.currentState!.openBookmarkView();
                },
                icon: Icon(
                  Icons.bookmark,
                  size: 30,
                  color: themechange.darkTheme ? Colors.white : Colors.black,
                )),
          ],
          title: Text(
            "الرقية الشرعية",
            style: TextStyle(
                color: themechange.darkTheme ? Colors.white : Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
        ),
        body: Stack(children: [
          SfPdfViewer.asset(
            pdfrukiapath,
            controller: _pdfViewerController,
            key: _globalKey,
            searchTextHighlightColor:
                themechange.darkTheme ? Colors.white : Colors.black,
          ),
          Positioned(
            bottom: 1,
            left: 1,
            child: Container(
              width: width,
              color: themechange.darkTheme ? Colors.grey[800] : Colors.white24,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CircleAvatar(
                  radius: 35,
                  child: Image.asset(
                    "assets/images/maher.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    child: Icon(
                      CupertinoIcons.backward_fill,
                      color:
                          themechange.darkTheme ? Colors.white : Colors.black,
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
                    color: themechange.darkTheme ? Colors.white : Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    child: Icon(
                      CupertinoIcons.forward_fill,
                      color:
                          themechange.darkTheme ? Colors.white : Colors.black,
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
      )),
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
