import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guraan_app/screns/screens_home.dart/adaiaa_screen.dart';
import 'package:guraan_app/screns/screens_home.dart/juzaa_screen.dart';
import 'package:guraan_app/screns/screens_home.dart/mydrawar_screen.dart';
import 'package:guraan_app/screns/adaia/rukia_screen.dart';
import 'package:guraan_app/screns/screens_home.dart/suraa_screen.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:guraan_app/utiles/darkThemContloller/theme.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

import 'masbaha_alctronia_screen.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({Key? key}) : super(key: key);

  @override
  _HomeScrenState createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late bool _candarg;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  void _onDrawarStart(DragStartDetails details) {
    bool isDrageOpenFromLeft = animationController.isDismissed;
    bool isDrageOpenFromRight = animationController.isCompleted;
    _candarg = isDrageOpenFromLeft || isDrageOpenFromRight;
  }

  void _onDrawarUpdate(DragUpdateDetails details) {
    if (_candarg) {
      double delta = details.primaryDelta! / 280;
      animationController.value += delta;
    }
  }

  void OndrawarEnd(DragEndDetails details) {
    double _KMingvelocity = 365.0;
    if (animationController.isDismissed || animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= _KMingvelocity) {
      double visualvelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      animationController.fling(velocity: visualvelocity);
    } else if (animationController.value < 0.5) {
      animationController.reverse();
    } else {
      animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final themechange = Provider.of<DarkThemeProvider>(context);
    return GestureDetector(
      onHorizontalDragStart: _onDrawarStart,
      onHorizontalDragUpdate: _onDrawarUpdate,
      onHorizontalDragEnd: OndrawarEnd,
      behavior: HitTestBehavior.translucent,
      child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return Material(
              color: themechange.darkTheme ? Colors.grey[850] : Colors.white70,
              child: SafeArea(
                  child: Stack(
                children: [
                  Transform.translate(
                    offset: Offset(280 * (animationController.value - 1), 0),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(
                            math.pi / 2 * (1 - animationController.value)),
                      alignment: Alignment.centerRight,
                      child: MyDrawer(),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(280 * animationController.value, 0),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(-math.pi / 2 * animationController.value),
                      alignment: Alignment.centerLeft,
                      child: MainView(),
                    ),
                  ),
                  Positioned(
                      top: 4.0 + MediaQuery.of(context).padding.top,
                      left: MediaQuery.of(context).size.width * 0.06 +
                          animationController.value * 280,
                      child: IconButton(
                        onPressed: () {
                          toggle();
                        },
                        icon: Icon(Icons.menu),
                        color:
                            themechange.darkTheme ? Colors.white : Colors.black,
                      )),
                  Positioned(
                      top: 4.0 + MediaQuery.of(context).padding.top,
                      right: MediaQuery.of(context).size.width * 0.06 +
                          animationController.value * 280,
                      child: IconButton(
                        onPressed: () {
                          goToBack();
                        },
                        icon: Icon(
                          Icons.arrow_forward_rounded,
                          size: 50,
                        ),
                        color:
                            themechange.darkTheme ? Colors.white : Colors.black,
                      )),
                ],
              )),
            );
          }),
    );
  }

  void goToBack() {
    SystemNavigator.pop();
  }
}

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    double padd = hight * 0.05;
    final themechange = Provider.of<DarkThemeProvider>(context);
    void goToRukiaScreen() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return RukiaScreen();
      }));
    }

    void goToSuraaScreen() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SuraaScreen();
      }));
    }

    void goToAdaiaaScreen() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AdaiaaScreen();
      }));
    }

    void goToJuzaaScreen() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return juzaaScreen();
      }));
    }

    void goToMasbahaAlctroniaScreen() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MasbahaAlctroniaScreen();
      }));
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      color: themechange.darkTheme ? Colors.grey[850] : Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: hight * 0.03,
            left: width * 0.15,
            child: Image.asset(
              'assets/images/tartiel1.png',
              height: 150,
            ),
          ),
          Positioned(
              left: 0,
              bottom: 0,
              child: Opacity(
                opacity: 0.2,
                child: Image.asset('assets/images/quraan3.png'),
              )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: hight * 0.10,
                ),
                MainScreenBtn(
                  btnText: 'فهرس الاجزاء',
                  onPressFtn: () {
                    goToJuzaaScreen();
                  },
                ),
                MainScreenBtn(
                  btnText: 'فهرس السور',
                  onPressFtn: () {
                    goToSuraaScreen();
                  },
                ),
                MainScreenBtn(
                  btnText: 'الادعية',
                  onPressFtn: () {
                    goToAdaiaaScreen();
                  },
                ),
                MainScreenBtn(
                    btnText: 'الرقية الشرعية',
                    onPressFtn: () {
                      goToRukiaScreen();
                    }),
                MainScreenBtn(
                    btnText: 'المسبحة الالكترونية',
                    onPressFtn: () {
                      goToMasbahaAlctroniaScreen();
                    }),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text('quraan kareem ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: themechange.darkTheme ? Colors.white : Colors.black,
                    fontSize: 20)),
          ),
        ],
      ),
    );
  }
}

class MainScreenBtn extends StatelessWidget {
  final String? btnText;
  final VoidCallback? onPressFtn;

  MainScreenBtn({@required this.btnText, @required this.onPressFtn});

  @override
  Widget build(BuildContext context) {
    final themechange = Provider.of<DarkThemeProvider>(context);
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: hight * 0.01),
      child: SizedBox(
        width: width * 0.7,
        height: hight * 0.09,
        child: MaterialButton(
          color: Colors.deepPurple,
          shape: StadiumBorder(),
          onPressed: onPressFtn,
          child: Text(
            btnText!,
            style: TextStyle(
              color: themechange.darkTheme ? Colors.white : Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
