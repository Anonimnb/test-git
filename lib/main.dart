import 'dart:async';
import 'package:books_projects/pages/dastur_haqida.dart';
import 'package:books_projects/pages/dastur_rejimi.dart';
import 'package:books_projects/pages/kitob_boblari.dart';
import 'package:books_projects/pages/kitob_xarid_qilish.dart';
import 'package:books_projects/pages/kod_page.dart';
import 'package:books_projects/pages/kod_password.dart';
import 'package:books_projects/pages/language_page.dart';
import 'package:books_projects/pages/parolni_tiklash_page.dart';
import 'package:books_projects/pages/profil_page.dart';
import 'package:books_projects/pages/profilga_kirish.dart';
import 'package:books_projects/pages/sing_up_page.dart';
import 'package:books_projects/pages/splash_page.dart';
import 'package:books_projects/pages/video_page.dart';
import 'package:books_projects/pages/xaridni_tekshirish.dart';
import 'package:books_projects/pages/yangi_parol_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("email");
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('uz', 'UZ'),
        Locale('ru', 'RU'),
        Locale('fr', 'FR')
      ],
      path: 'assets/translation',
      fallbackLocale: const Locale('uz', 'UZ'),
      child: ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: const MyApp(),
      ),
    ),
  );
}

class ThemeProvider extends ChangeNotifier {
  bool _isDarkTheme = false;

  bool get isDarkTheme => _isDarkTheme;

  ThemeProvider() {
    _loadTheme();
  }

  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDarkTheme = prefs.getBool('isDarkTheme') ?? false;
    notifyListeners();
  }

  void toggleTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDarkTheme = !_isDarkTheme;
    await prefs.setBool('isDarkTheme', _isDarkTheme);
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: themeProvider.isDarkTheme ? Brightness.dark : Brightness.light,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const SplashPage(),
      routes: {
        LanguagePage.id: (context) => const LanguagePage(),
        VideoPage.id: (context) => const VideoPage(),
        SingUpPage.id: (context) => const SingUpPage(),
        ProfilPage.id: (context) => const ProfilPage(),
        ParolniTiklashPage.id: (context) => const ParolniTiklashPage(),
        KodPage.id: (context) => const KodPage(),
        YangiParolPage.id: (context) => const YangiParolPage(),
        KitobBoblari.id: (context) => const KitobBoblari(),
        DasturRejimi.id: (context) => const DasturRejimi(),
        DasturHaqida.id: (context) => const DasturHaqida(),
        ProfilgaKirish.id: (context) => const ProfilgaKirish(),
        KitobXaridQilish.id: (context) => const KitobXaridQilish(),
        XaridniTekshirish.id: (context) => const XaridniTekshirish(),
        KodPassword.id: (context) => const KodPassword(),
      },
    );
  }
}
