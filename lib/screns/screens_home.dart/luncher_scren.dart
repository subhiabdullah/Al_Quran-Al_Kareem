import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guraan_app/screns/screens_home.dart/screen_information_quraan.dart';
import 'package:shimmer/shimmer.dart';

class LuncherScren extends StatelessWidget {
  const LuncherScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LuncherScrenFull(),
    );
  }
}

class LuncherScrenFull extends StatefulWidget {
  const LuncherScrenFull({Key? key}) : super(key: key);

  @override
  _LuncherScrenState createState() => _LuncherScrenState();
}

class _LuncherScrenState extends State<LuncherScrenFull> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ScreenInformation();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.lightGreen[900],
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage(
                    'assets/images/quraan1.png',
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
