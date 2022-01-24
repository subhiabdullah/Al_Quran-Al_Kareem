import 'package:flutter/material.dart';

import 'package:flutter_overboard/flutter_overboard.dart';

import 'home_screen_quraan.dart';

class ScreenInformation extends StatelessWidget {
  ScreenInformation({Key? key}) : super(key: key);
  final _pages = [
    PageModel(
        color: Colors.lightBlue,
        imageAssetPath: 'assets/images/quraan3.png',
        title: 'القرآن الكريم',
        body:
            '   يمكنك التطبيق من تلاوة القرآن الكريم دون الحاجة للانترنت كما يمكنك من الاستماع الى اجمل التلاوات',
        doAnimateImage: true),
    PageModel(
        color: Colors.green[400],
        imageAssetPath: 'assets/images/kabaah.png',
        title: 'قسم الادعية',
        body: 'ستجد في هذا القسم مجموعة من الادعية الشاملة ',
        doAnimateImage: true),
    PageModel(
        color: Colors.indigoAccent,
        imageAssetPath: 'assets/images/rukia.png',
        title: 'الرقية الشرعية',
        body: 'يوجد قسم خاص بالرقية الشرعية قراءة وصوت',
        doAnimateImage: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverBoard(
        pages: _pages,
        finishCallback: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomeScren();
          }));
        },
        skipCallback: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomeScren();
          }));
        },
        showBullets: true,
      ),
    );
  }
}
