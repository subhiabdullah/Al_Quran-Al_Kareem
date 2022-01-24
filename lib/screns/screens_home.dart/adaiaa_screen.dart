import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';

import '../adaia/duaa_nabi_Allah_younous_screen.dart';
import '../adaia/adaia_amaa_screen.dart';
import '../adaia/duaa_alfazaa_fe_alnom_screen.dart';
import '../adaia/duaa_alhezan_alham_screen.dart';
import '../adaia/duaa_almared_screen.dart';
import '../adaia/duaa_alreh_screen.dart';
import '../adaia/duaa_alrezak_screen.dart';
import '../adaia/duaa_alsabah_almsaa_screen.dart';
import '../adaia/duaa_alsafar_screen.dart';
import '../adaia/duaa_alzahabLlmasged.dart';
import '../adaia/duaa_kabl_algemaa_screen.dart';
import '../adaia/duaa_nabi_allah_mohamad_screen.dart';
import '../adaia/duaa_nabi_allah_mousa_screen.dart';
import '../adaia/duaa_sagdat_altelawa_screen.dart';
import '../adaia/duaa_salat_istkara_screen.dart';

class AdaiaaScreen extends StatefulWidget {
  const AdaiaaScreen({Key? key}) : super(key: key);

  @override
  _RukiaScreenState createState() => _RukiaScreenState();
}

class _RukiaScreenState extends State<AdaiaaScreen> {
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
          backgroundColor:
              themechange.darkTheme ? Colors.grey[800] : Colors.tealAccent[400],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: themechange.darkTheme ? Colors.grey[850] : Colors.white,
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
              ListView(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        MainScreenBtn(
                          btnText: ' دعاء السفر',
                          onPressFtn: () {
                            GoToDuaaAlsafarScreen();
                          },
                        ),
                        MainScreenBtn(
                          btnText: ' اذكار الصباح والمساء',
                          onPressFtn: () {
                            GoToDuaaAlsabahAlmsaaScreen();
                          },
                        ),
                        MainScreenBtn(
                          btnText: 'دعاء الذهاب للمسجد',
                          onPressFtn: () {
                            GoToDuaaAlzhabLlMasgedScreen();
                          },
                        ),
                        MainScreenBtn(
                          btnText: 'دعاء سجدة التلاوة',
                          onPressFtn: () {
                            GoToDuaaSagdatAltelawaScreen();
                          },
                        ),
                        MainScreenBtn(
                            btnText: ' دعاء صلاة الاستخارة',
                            onPressFtn: () {
                              GoToDuaaSalatIstkaraScreen();
                            }),
                        MainScreenBtn(
                            btnText: 'دعاء الريح',
                            onPressFtn: () {
                              GoToDuaaAlrehScreen();
                            }),
                        MainScreenBtn(
                            btnText: 'دعاء القلق والفزع في النوم',
                            onPressFtn: () {
                              GoToDuaaAlfazaaFeAlnomScreen();
                            }),
                        MainScreenBtn(
                            btnText: ' دعاء المريض عند زيارته',
                            onPressFtn: () {
                              GoToDuaaAlmaredScreen();
                            }),
                        MainScreenBtn(
                            btnText: 'دعاء قبل الجماع',
                            onPressFtn: () {
                              GoToDuaaKablAlgmaaScreen();
                            }),
                        MainScreenBtn(
                            btnText: ' دعاء الحزن والهم',
                            onPressFtn: () {
                              GoToDuaaAlhezanAlhamScreen();
                            }),
                        MainScreenBtn(
                            btnText: '  دعاء الرزق',
                            onPressFtn: () {
                              GoToDuaaAlrezakScreen();
                            }),
                        MainScreenBtn(
                            btnText: ' دعاء نبي الله محمد',
                            onPressFtn: () {
                              GoToDuaaNabiAllahMohamadScreen();
                            }),
                        MainScreenBtn(
                            btnText: 'دعاء نبي الله موسى',
                            onPressFtn: () {
                              GoToDuaaNabiAllahMousaScreen();
                            }),
                        MainScreenBtn(
                            btnText: 'دعاء نبي الله يونس',
                            onPressFtn: () {
                              GoToDuaaNabiAllahyounousScreen();
                            }),
                        MainScreenBtn(
                            btnText: ' ادعية عامة',
                            onPressFtn: () {
                              GoToAdaiaAmaaScreen();
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  void gotToBack() {
    Navigator.pop(context);
  }

  void GoToDuaaAlsafarScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaAlsafarScreen();
    }));
  }

  void GoToDuaaAlsabahAlmsaaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaAlsabahAlmsaaScreen();
    }));
  }

  void GoToDuaaAlzhabLlMasgedScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaAlzhabLlMasgedScreen();
    }));
  }

  void GoToDuaaSagdatAltelawaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaSagdatAltelawaScreen();
    }));
  }

  void GoToDuaaSalatIstkaraScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaSalatIstkaraScreen();
    }));
  }

  void GoToDuaaAlrehScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaAlrehScreen();
    }));
  }

  void GoToDuaaAlfazaaFeAlnomScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaAlfazaaFeAlnomScreen();
    }));
  }

  void GoToDuaaAlmaredScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaAlmaredScreen();
    }));
  }

  void GoToDuaaKablAlgmaaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaKablAlgmaaScreen();
    }));
  }

  void GoToDuaaAlhezanAlhamScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaAlhezanAlhamScreen();
    }));
  }

  void GoToDuaaAlrezakScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaAlrezakScreen();
    }));
  }

  void GoToDuaaNabiAllahMohamadScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaNabiAllahMohamadScreen();
    }));
  }

  void GoToDuaaNabiAllahMousaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaNabiAllahMousaScreen();
    }));
  }

  void GoToDuaaNabiAllahyounousScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DuaaNabiAllahyounousScreen();
    }));
  }

  void GoToAdaiaAmaaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AdaiaAmaaScreen();
    }));
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
        width: width * 0.95,
        height: hight * 0.08,
        child: MaterialButton(
          color: Colors.tealAccent[400],
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
