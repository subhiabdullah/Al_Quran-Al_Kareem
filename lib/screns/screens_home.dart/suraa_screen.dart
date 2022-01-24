import 'package:flutter/material.dart';
import 'package:guraan_app/screns/suar_alqurqn/sabaa_screen.dart';
import 'package:guraan_app/screns/suar_alqurqn/sad_screen.dart';
import 'package:guraan_app/screns/suar_alqurqn/taha_screen.dart';
import 'package:guraan_app/screns/suar_alqurqn/yasen_screen.dart';
import 'package:guraan_app/screns/suar_alqurqn/younous_screen.dart';
import 'package:guraan_app/screns/suar_alqurqn/yousof_screen.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';
import 'package:quran/quran.dart' as quran;

import '../suar_alqurqn/abasa_screen.dart';
import '../suar_alqurqn/alaalah_screen.dart';
import '../suar_alqurqn/alaaraf_screen.dart';
import '../suar_alqurqn/aladeat_screen.dart';
import '../suar_alqurqn/alahkaf_screen.dart';
import '../suar_alqurqn/alahzab_screen.dart';
import '../suar_alqurqn/alalak_screen.dart';
import '../suar_alqurqn/alanam_screen.dart';
import '../suar_alqurqn/alanbeaa_screen.dart';
import '../suar_alqurqn/alanfal_screen.dart';
import '../suar_alqurqn/alanfetar_screen.dart';
import '../suar_alqurqn/alankabot_screen.dart';
import '../suar_alqurqn/alansan_screen.dart';
import '../suar_alqurqn/alanshekak_screen.dart';
import '../suar_alqurqn/alaser_screen.dart';
import '../suar_alqurqn/alasraa_screen.dart';
import '../suar_alqurqn/albaena_screen.dart';
import '../suar_alqurqn/albakara_screen.dart';
import '../suar_alqurqn/albalad_screen.dart';
import '../suar_alqurqn/alborog_screen.dart';
import '../suar_alqurqn/aldokan_screen.dart';
import '../suar_alqurqn/aldwha_screen.dart';
import '../suar_alqurqn/aleklas_screen.dart';
import '../suar_alqurqn/alfager_screen.dart';
import '../suar_alqurqn/alfalak_screen.dart';
import '../suar_alqurqn/alfateh_screen.dart';
import '../suar_alqurqn/alfateha_screen.dart';
import '../adaia/duaa_nabi_Allah_younous_screen.dart';
import '../adaia/adaia_amaa_screen.dart';
import '../suar_alqurqn/alfeal_screen.dart';
import '../suar_alqurqn/alfourkan_screen.dart';
import '../suar_alqurqn/algan_screen.dart';
import '../suar_alqurqn/algoumaa_screen.dart';
import '../suar_alqurqn/alhaded_screen.dart';
import '../suar_alqurqn/alhag_screen.dart';
import '../suar_alqurqn/alhaka_screen.dart';
import '../suar_alqurqn/alhasher_screen.dart';
import '../suar_alqurqn/alhomazah_screen.dart';
import '../suar_alqurqn/alhugor_screen.dart';
import '../suar_alqurqn/alhugurat_screen.dart';
import '../suar_alqurqn/aljasea_screen.dart';
import '../suar_alqurqn/alkader_screen.dart';
import '../suar_alqurqn/alkaferon_screen.dart';
import '../suar_alqurqn/alkahaf_screen.dart';
import '../suar_alqurqn/alkalam_screen.dart';
import '../suar_alqurqn/alkamar_screen.dart';
import '../suar_alqurqn/alkareah_screen.dart';
import '../suar_alqurqn/alkasas_screen.dart';
import '../suar_alqurqn/alkashea_screen.dart';
import '../suar_alqurqn/alkeamah_screen.dart';
import '../suar_alqurqn/alkothar_screen.dart';
import '../suar_alqurqn/allael_screen.dart';
import '../suar_alqurqn/almaaon_screen.dart';
import '../suar_alqurqn/almaeda_screen.dart';
import '../suar_alqurqn/almareg_screen.dart';
import '../suar_alqurqn/almasad_screen.dart';
import '../suar_alqurqn/almoaamenon_screen.dart';
import '../suar_alqurqn/almodather_screen.dart';
import '../suar_alqurqn/almogadala_screen.dart';
import '../suar_alqurqn/almolk_screen.dart';
import '../suar_alqurqn/almomtahena_screen.dart';
import '../suar_alqurqn/almonafekon_screen.dart';
import '../suar_alqurqn/almorsalat_screen.dart';
import '../suar_alqurqn/almotafefen_screen.dart';
import '../suar_alqurqn/almozamel_screen.dart';
import '../suar_alqurqn/alnabaa_screen.dart';
import '../suar_alqurqn/alnagem_screen.dart';
import '../suar_alqurqn/alnahal_screen.dart';
import '../suar_alqurqn/alnamel_screen.dart';
import '../suar_alqurqn/alnas_screen.dart';
import '../suar_alqurqn/alnaser_screen.dart';
import '../suar_alqurqn/alnazeat_screen.dart';
import '../suar_alqurqn/alnesaa_screen.dart';
import '../suar_alqurqn/alnour_screen.dart';
import '../suar_alqurqn/alomran_screen.dart';
import '../suar_alqurqn/alraad_screen.dart';
import '../suar_alqurqn/alrahman_screen.dart';
import '../suar_alqurqn/alroum_screen.dart';
import '../suar_alqurqn/alsaf_screen.dart';
import '../suar_alqurqn/alsafat_screen.dart';
import '../suar_alqurqn/alsagdah_screen.dart';
import '../suar_alqurqn/alshams_screen.dart';
import '../suar_alqurqn/alsharaa_screen.dart';
import '../suar_alqurqn/alshareh_screen.dart';
import '../suar_alqurqn/alshuraa_screen.dart';
import '../suar_alqurqn/alsukrof_screen.dart';
import '../suar_alqurqn/altahrem_screen.dart';
import '../suar_alqurqn/altakabon_screen.dart';
import '../suar_alqurqn/altakuer_screen.dart';
import '../suar_alqurqn/altalak_screen.dart';
import '../suar_alqurqn/altareq_screen.dart';
import '../suar_alqurqn/altean_screen.dart';
import '../suar_alqurqn/altkathor_screen.dart';
import '../suar_alqurqn/altour_screen.dart';
import '../suar_alqurqn/altubah_screen.dart';
import '../suar_alqurqn/alwakeaa_screen.dart';
import '../suar_alqurqn/alzaLzala_screen.dart';
import '../suar_alqurqn/alzamur_screen.dart';
import '../suar_alqurqn/alzareat_screen.dart';
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
import '../suar_alqurqn/fater_screen.dart';
import '../suar_alqurqn/fusalat_screen.dart';
import '../suar_alqurqn/houd_screen.dart';
import '../suar_alqurqn/ibrahiem_screen.dart';
import '../suar_alqurqn/kaf_screen.dart';
import '../suar_alqurqn/kafar_screen.dart';
import '../suar_alqurqn/koraesh_screen.dart';
import '../suar_alqurqn/lukman_screen.dart';
import '../suar_alqurqn/maream_screen.dart';
import '../suar_alqurqn/mouhamad_screen.dart';
import '../suar_alqurqn/nouh_screen.dart';

class SuraaScreen extends StatefulWidget {
  const SuraaScreen({Key? key}) : super(key: key);

  @override
  _RukiaScreenState createState() => _RukiaScreenState();
}

class _RukiaScreenState extends State<SuraaScreen> {
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      MainScreenBtn(
                        numberSurah: 1,
                        typeSurah: quran.getPlaceOfRevelation(1),
                        btnText: ' سورة الفاتحة ',
                        onPressFtn: () {
                          GoToAlfatehafarScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 2,
                        typeSurah: quran.getPlaceOfRevelation(2),
                        btnText: '  سورة البقرة  ',
                        onPressFtn: () {
                          GoToAlBakaraScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 3,
                        typeSurah: quran.getPlaceOfRevelation(3),
                        btnText: 'سورة آل عمران  ',
                        onPressFtn: () {
                          GoToAlOmranScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 4,
                        typeSurah: quran.getPlaceOfRevelation(4),
                        btnText: ' سورة النساء  ',
                        onPressFtn: () {
                          GoToAlnesaaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 5,
                        typeSurah: quran.getPlaceOfRevelation(5),
                        btnText: ' سورة المائدة ',
                        onPressFtn: () {
                          GoToAlmaedaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 6,
                        typeSurah: quran.getPlaceOfRevelation(6),
                        btnText: ' سورة الأنعام  ',
                        onPressFtn: () {
                          GoToAlanamScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 7,
                        typeSurah: quran.getPlaceOfRevelation(7),
                        btnText: ' سورة الأعراف  ',
                        onPressFtn: () {
                          GoToAlAarafScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 8,
                        typeSurah: quran.getPlaceOfRevelation(8),
                        btnText: '  سورة الأنفال  ',
                        onPressFtn: () {
                          GoToAlAnfalScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 9,
                        typeSurah: quran.getPlaceOfRevelation(9),
                        btnText: '  سورة التوبة  ',
                        onPressFtn: () {
                          GoToAlTubahScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 10,
                        typeSurah: quran.getPlaceOfRevelation(10),
                        btnText: '  سورة يونس  ',
                        onPressFtn: () {
                          GoToYounousScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 11,
                        typeSurah: quran.getPlaceOfRevelation(11),
                        btnText: '    سورة هود   ',
                        onPressFtn: () {
                          GoToHoudScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 12,
                        typeSurah: quran.getPlaceOfRevelation(12),
                        btnText: '  سورة يوسف  ',
                        onPressFtn: () {
                          GoToYousofScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 13,
                        typeSurah: quran.getPlaceOfRevelation(13),
                        btnText: '   سورة الرعد  ',
                        onPressFtn: () {
                          GoToAlRaadScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 14,
                        typeSurah: quran.getPlaceOfRevelation(14),
                        btnText: ' سورة ابراهيم  ',
                        onPressFtn: () {
                          GoToIbrahiemScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 15,
                        typeSurah: quran.getPlaceOfRevelation(15),
                        btnText: ' سورة الحجر   ',
                        onPressFtn: () {
                          GoToAlHugorScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 16,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة النحل    ',
                        onPressFtn: () {
                          GoToAlNahalScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 17,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الإسراء   ',
                        onPressFtn: () {
                          GoToAlAsraaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 18,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الكهف    ',
                        onPressFtn: () {
                          GoToAlKahafScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 19,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة مريم    ',
                        onPressFtn: () {
                          GoToMareamScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 20,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '    سورة طه   ',
                        onPressFtn: () {
                          GoToTahaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 21,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الأنبياء ',
                        onPressFtn: () {
                          GoToAlAnbeaaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 22,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة الحج   ',
                        onPressFtn: () {
                          GoToAlHagScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 23,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة المؤمنون ',
                        onPressFtn: () {
                          GoToAlmoaamenonScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 24,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة النور    ',
                        onPressFtn: () {
                          GoToAlNourScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 25,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الفرقان  ',
                        onPressFtn: () {
                          GoToAlFourkanScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 26,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الشعراء ',
                        onPressFtn: () {
                          GoToAlShuaraaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 27,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة النمل    ',
                        onPressFtn: () {
                          GoToAlNamelScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 28,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة القصص ',
                        onPressFtn: () {
                          GoToAlkasasScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 29,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة العنكبوت ',
                        onPressFtn: () {
                          GoToAlAnkabotScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 30,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة الروم   ',
                        onPressFtn: () {
                          GoToAlRoumScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 31,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة لقمان  ',
                        onPressFtn: () {
                          GoToLukmanScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 32,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة السجدة ',
                        onPressFtn: () {
                          GoToAlsagdahScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 33,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الأحزاب  ',
                        onPressFtn: () {
                          GoToAlAhzabScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 34,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة سبأ    ',
                        onPressFtn: () {
                          GoToSabaaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 35,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة فاطر   ',
                        onPressFtn: () {
                          GoToFaterScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 36,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة ياسين   ',
                        onPressFtn: () {
                          GoToYasenScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 37,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الصافات  ',
                        onPressFtn: () {
                          GoToAlSafatScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 38,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '    سورة ص     ',
                        onPressFtn: () {
                          GoToSadScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 39,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة الزمر    ',
                        onPressFtn: () {
                          GoToAlZamurScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 40,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة غافر    ',
                        onPressFtn: () {
                          GoTokafarScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 41,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة فصلت  ',
                        onPressFtn: () {
                          GoTofusalatScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 42,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الشورى  ',
                        onPressFtn: () {
                          GoToAlShuraaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 43,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة الزخرف  ',
                        onPressFtn: () {
                          GoToAlSukrofScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 44,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الدخان   ',
                        onPressFtn: () {
                          GoToAldokanScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 45,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الجاثية  ',
                        onPressFtn: () {
                          GoToAlJaseaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 46,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الأحقاف  ',
                        onPressFtn: () {
                          GoToAlAhkafScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 47,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة محمد   ',
                        onPressFtn: () {
                          GoToMouhamadScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 48,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة الفتح   ',
                        onPressFtn: () {
                          GoToAlFatehScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 49,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الحجرات ',
                        onPressFtn: () {
                          GoToAlHuguratScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 50,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '    سورة ق       ',
                        onPressFtn: () {
                          GoToKafScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 51,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الذاريات  ',
                        onPressFtn: () {
                          GoToAlZareatScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 52,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الطور  ',
                        onPressFtn: () {
                          GoToAlTourScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 53,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة النجم  ',
                        onPressFtn: () {
                          GoToAlNagemScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 54,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة القمر  ',
                        onPressFtn: () {
                          GoToAlkamarScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 55,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الرحمن  ',
                        onPressFtn: () {
                          GoToAlRahmanScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 56,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الواقعة ',
                        onPressFtn: () {
                          GoToAlWakeaaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 57,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الحديد  ',
                        onPressFtn: () {
                          GoToAlHadedScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 58,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: 'سورة المجادلة ',
                        onPressFtn: () {
                          GoToAlMogadalaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 59,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الحشر   ',
                        onPressFtn: () {
                          GoToAlHasherScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 60,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الممتحنة',
                        onPressFtn: () {
                          GoToAlMomtahenaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 61,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة الصف  ',
                        onPressFtn: () {
                          GoToAlSafScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 62,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الجمعة',
                        onPressFtn: () {
                          GoToAlGoumaaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 63,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: 'سورة المنافقون',
                        onPressFtn: () {
                          GoToAlMonafekonScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 64,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة  التغابن ',
                        onPressFtn: () {
                          GoToATakabonScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 65,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة  الطلاق ',
                        onPressFtn: () {
                          GoToAlTalakScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 66,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة  التحريم ',
                        onPressFtn: () {
                          GoToAlTahremScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 67,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة  الملك   ',
                        onPressFtn: () {
                          GoToAlmolkScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 68,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة  القلم    ',
                        onPressFtn: () {
                          GoToAlKalamScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 69,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة  الحاقة  ',
                        onPressFtn: () {
                          GoToAlHakaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 70,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة  المعارج ',
                        onPressFtn: () {
                          GoToAlMaregScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 71,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة  نوح  ',
                        onPressFtn: () {
                          GoToNouhScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 72,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة  الجن  ',
                        onPressFtn: () {
                          GoToAlGanScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 73,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة المزمل  ',
                        onPressFtn: () {
                          GoToAlMozamelScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 74,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة المدثر  ',
                        onPressFtn: () {
                          GoToAlModatherScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 75,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة القيامة ',
                        onPressFtn: () {
                          GoToAkeamahScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 76,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الانسان ',
                        onPressFtn: () {
                          GoToAlAnsanScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 77,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة المرسلات ',
                        onPressFtn: () {
                          GoToAlMorsalatScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 78,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '    سورة النبأ   ',
                        onPressFtn: () {
                          GoToAlNabaaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 79,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة النازعات ',
                        onPressFtn: () {
                          GoToAlNazeatScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 80,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة عبس   ',
                        onPressFtn: () {
                          GoToAbasaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 81,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة التكوير ',
                        onPressFtn: () {
                          GoToAlTakuerScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 82,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الانفطار ',
                        onPressFtn: () {
                          GoToAlAnfetarScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 83,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة المطففين',
                        onPressFtn: () {
                          GoToAlMotafefenScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 84,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الانشقاق ',
                        onPressFtn: () {
                          GoToAlAnshekakScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 85,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة البروج  ',
                        onPressFtn: () {
                          GoToAlBorogScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 86,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الطارق ',
                        onPressFtn: () {
                          GoToAlTareqScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 87,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الاعلى   ',
                        onPressFtn: () {
                          GoToAlAalahScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 88,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الغاشية',
                        onPressFtn: () {
                          GoToAlKasheaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 89,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الفجر  ',
                        onPressFtn: () {
                          GoToAlFagerScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 90,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة البلد   ',
                        onPressFtn: () {
                          GoToAlBaladScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 91,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الشمس ',
                        onPressFtn: () {
                          GoToAlShamsScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 92,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '   سورة الليل   ',
                        onPressFtn: () {
                          GoToAlLaelScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 93,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الضحى ',
                        onPressFtn: () {
                          GoToAlDwhaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 94,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الشرح ',
                        onPressFtn: () {
                          GoToAlShrehScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 95,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة التين  ',
                        onPressFtn: () {
                          GoToAlTeanScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 96,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة العلق  ',
                        onPressFtn: () {
                          GoToAlAlakScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 97,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة القدر  ',
                        onPressFtn: () {
                          GoToAlKaderScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 98,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة البينة  ',
                        onPressFtn: () {
                          GoToAlBaenaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 99,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة  الزلزلة  ',
                        onPressFtn: () {
                          GoToAlZalzalaScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 100,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة العاديات  ',
                        onPressFtn: () {
                          GoToAlAdeatScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 101,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة القارعة  ',
                        onPressFtn: () {
                          GoToAlKareahScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 102,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة التكاثر  ',
                        onPressFtn: () {
                          GoToAlTkathorScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 103,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة العصر  ',
                        onPressFtn: () {
                          GoToAlAserScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 104,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الهمزة  ',
                        onPressFtn: () {
                          GoToAlHomazahScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 105,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة  الفيل   ',
                        onPressFtn: () {
                          GoToAlFealScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 106,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة قريش  ',
                        onPressFtn: () {
                          GoToKoraeshScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 107,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورةالماعون ',
                        onPressFtn: () {
                          GoToAlMaaonScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 108,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الكوثر  ',
                        onPressFtn: () {
                          GoToAlKotharScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 109,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: 'سورة الكافرون ',
                        onPressFtn: () {
                          GoToAlKaferonScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 110,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة النصر  ',
                        onPressFtn: () {
                          GoToAlNaserScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 111,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة المسد  ',
                        onPressFtn: () {
                          GoToAlMasadScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 112,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: ' سورة الإخلاص ',
                        onPressFtn: () {
                          GoToAlEklasScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 113,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة  الفلق   ',
                        onPressFtn: () {
                          GoToAlfalakScreen();
                        },
                      ),
                      MainScreenBtn(
                        numberSurah: 114,
                        typeSurah: quran.getPlaceOfRevelation(16),
                        btnText: '  سورة الناس   ',
                        onPressFtn: () {
                          GoToAlNasScreen();
                        },
                      ),
                    ],
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

  void GoToAlfatehafarScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlfatehafarScreen();
    }));
  }

  void GoToAlBakaraScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlBakaraScreen();
    }));
  }

  void GoToAlOmranScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlOmranScreen();
    }));
  }

  void GoToAlnesaaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlnesaaScreen();
    }));
  }

  void GoToAlmaedaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlmaedaScreen();
    }));
  }

  void GoToAlanamScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlanamScreen();
    }));
  }

  void GoToAlAarafScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAarafScreen();
    }));
  }

  void GoToAlAnfalScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAnfalScreen();
    }));
  }

  void GoToAlTubahScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlTubahScreen();
    }));
  }

  void GoToYounousScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return YounousScreen();
    }));
  }

  void GoToHoudScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HoudScreen();
    }));
  }

  void GoToYousofScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return YousofScreen();
    }));
  }

  void GoToAlRaadScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlRaadScreen();
    }));
  }

  void GoToIbrahiemScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return IbrahiemScreen();
    }));
  }

  void GoToAlHugorScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlHugorScreen();
    }));
  }

  void GoToAlNahalScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlNahalScreen();
    }));
  }

  void GoToAlAsraaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAsraaScreen();
    }));
  }

  void GoToAlKahafScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlKahafScreen();
    }));
  }

  void GoToMareamScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MareamScreen();
    }));
  }

  void GoToTahaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TahaScreen();
    }));
  }

  void GoToAlAnbeaaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAnbeaaScreen();
    }));
  }

  void GoToAlHagScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlHagScreen();
    }));
  }

  void GoToAlmoaamenonScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlmoaamenonScreen();
    }));
  }

  void GoToAlNourScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlNourScreen();
    }));
  }

  void GoToAlFourkanScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlFourkanScreen();
    }));
  }

  void GoToAlShuaraaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlShuaraaScreen();
    }));
  }

  void GoToAlNamelScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlNamelScreen();
    }));
  }

  void GoToAlkasasScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlkasasScreen();
    }));
  }

  void GoToAlAnkabotScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAnkabotScreen();
    }));
  }

  void GoToAlRoumScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlRoumScreen();
    }));
  }

  void GoToLukmanScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LukmanScreen();
    }));
  }

  void GoToAlsagdahScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlsagdahScreen();
    }));
  }

  void GoToAlAhzabScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return lAhzabScreen();
    }));
  }

  void GoToSabaaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SabaaScreen();
    }));
  }

  void GoToFaterScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FaterScreen();
    }));
  }

  void GoToYasenScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return YasenScreen();
    }));
  }

  void GoToAlSafatScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlSafatScreen();
    }));
  }

  void GoToSadScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SadScreen();
    }));
  }

  void GoToAlZamurScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlZamurScreen();
    }));
  }

  void GoTokafarScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return kafarScreen();
    }));
  }

  void GoTofusalatScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return fusalatScreen();
    }));
  }

  void GoToAlShuraaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlShuraaScreen();
    }));
  }

  void GoToAlSukrofScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlSukrofScreen();
    }));
  }

  void GoToAldokanScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AldokanScreen();
    }));
  }

  void GoToAlJaseaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlJaseaScreen();
    }));
  }

  void GoToAlAhkafScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAhkafScreen();
    }));
  }

  void GoToMouhamadScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MouhamadScreen();
    }));
  }

  void GoToAlFatehScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlFatehScreen();
    }));
  }

  void GoToAlHuguratScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlHuguratScreen();
    }));
  }

  void GoToKafScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return KafScreen();
    }));
  }

  void GoToAlZareatScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlZareatScreen();
    }));
  }

  void GoToAlTourScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlTourScreen();
    }));
  }

  void GoToAlNagemScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlNagemScreen();
    }));
  }

  void GoToAlkamarScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlkamarScreen();
    }));
  }

  void GoToAlRahmanScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlRahmanScreen();
    }));
  }

  void GoToAlWakeaaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlWakeaaScreen();
    }));
  }

  void GoToAlHadedScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlHadedScreen();
    }));
  }

  void GoToAlMogadalaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlMogadalaScreen();
    }));
  }

  void GoToAlHasherScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlHasherScreen();
    }));
  }

  void GoToAlMomtahenaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlMomtahenaScreen();
    }));
  }

  void GoToAlSafScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlSafScreen();
    }));
  }

  void GoToAlGoumaaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlGoumaaScreen();
    }));
  }

  void GoToAlMonafekonScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlMonafekonScreen();
    }));
  }

  void GoToATakabonScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ATakabonScreen();
    }));
  }

  void GoToAlTalakScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlTalakScreen();
    }));
  }

  void GoToAlTahremScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlTahremScreen();
    }));
  }

  void GoToAlmolkScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlmolkScreen();
    }));
  }

  void GoToAlKalamScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlKalamScreen();
    }));
  }

  void GoToAlHakaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlHakaScreen();
    }));
  }

  void GoToAlMaregScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlMaregScreen();
    }));
  }

  void GoToNouhScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NouhScreen();
    }));
  }

  void GoToAlGanScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlGanScreen();
    }));
  }

  void GoToAlMozamelScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlMozamelScreen();
    }));
  }

  void GoToAlModatherScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlModatherScreen();
    }));
  }

  void GoToAkeamahScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AkeamahScreen();
    }));
  }

  void GoToAlAnsanScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAnsanScreen();
    }));
  }

  void GoToAlMorsalatScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlMorsalatScreen();
    }));
  }

  void GoToAlNabaaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlNabaaScreen();
    }));
  }

  void GoToAlNazeatScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlNazeatScreen();
    }));
  }

  void GoToAbasaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AbasaScreen();
    }));
  }

  void GoToAlTakuerScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlTakuerScreen();
    }));
  }

  void GoToAlAnfetarScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAnfetarScreen();
    }));
  }

  void GoToAlMotafefenScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlMotafefenScreen();
    }));
  }

  void GoToAlAnshekakScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAnshekakScreen();
    }));
  }

  void GoToAlBorogScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlBorogScreen();
    }));
  }

  void GoToAlTareqScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlTareqScreen();
    }));
  }

  void GoToAlAalahScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAalahScreen();
    }));
  }

  void GoToAlKasheaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlKasheaScreen();
    }));
  }

  void GoToAlFagerScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlFagerScreen();
    }));
  }

  void GoToAlBaladScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlBaladScreen();
    }));
  }

  void GoToAlShamsScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlShamsScreen();
    }));
  }

  void GoToAlLaelScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlLaelScreen();
    }));
  }

  void GoToAlDwhaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlDwhaScreen();
    }));
  }

  void GoToAlShrehScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlShrehScreen();
    }));
  }

  void GoToAlTeanScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlTeanScreen();
    }));
  }

  void GoToAlAlakScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAlakScreen();
    }));
  }

  void GoToAlKaderScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlKaderScreen();
    }));
  }

  void GoToAlBaenaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlBaenaScreen();
    }));
  }

  void GoToAlZalzalaScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlZalzalaScreen();
    }));
  }

  void GoToAlAdeatScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAdeatScreen();
    }));
  }

  void GoToAlKareahScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlKareahScreen();
    }));
  }

  void GoToAlTkathorScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlTkathorScreen();
    }));
  }

  void GoToAlAserScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlAserScreen();
    }));
  }

  void GoToAlHomazahScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlHomazahScreen();
    }));
  }

  void GoToAlFealScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlFealScreen();
    }));
  }

  void GoToKoraeshScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return KoraeshScreen();
    }));
  }

  void GoToAlMaaonScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlMaaonScreen();
    }));
  }

  void GoToAlKotharScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlKotharScreen();
    }));
  }

  void GoToAlKaferonScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlKaferonScreen();
    }));
  }

  void GoToAlNaserScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlNaserScreen();
    }));
  }

  void GoToAlMasadScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlMasadScreen();
    }));
  }

  void GoToAlEklasScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlEklasScreen();
    }));
  }

  void GoToAlfalakScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlfalakScreen();
    }));
  }

  void GoToAlNasScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlNasScreen();
    }));
  }
}

class MainScreenBtn extends StatelessWidget {
  final String? btnText;
  final VoidCallback? onPressFtn;
  final int? numberSurah;
  final String? typeSurah;

  MainScreenBtn(
      {@required this.btnText,
      @required this.onPressFtn,
      @required this.numberSurah,
      @required this.typeSurah});

  @override
  Widget build(BuildContext context) {
    final themechange = Provider.of<DarkThemeProvider>(context);
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: hight * 0.003),
      child: SizedBox(
        width: width * 0.95,
        height: hight * 0.08,
        child: Container(
          width: width,
          height: hight,
          child: MaterialButton(
            color: themechange.darkTheme ? Colors.grey[800] : Colors.lime[800],
            onPressed: onPressFtn,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                typeSurah!,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: themechange.darkTheme ? Colors.white : Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: Text(
                  btnText!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: themechange.darkTheme ? Colors.white : Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor:
                    themechange.darkTheme ? Colors.black : Colors.white,
                child: Center(
                  child: Text(
                    numberSurah.toString(),
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color:
                          themechange.darkTheme ? Colors.white : Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
