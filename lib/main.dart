import 'package:books_projects/pages/book_page.dart';
import 'package:books_projects/pages/dastur_haqida.dart';
import 'package:books_projects/pages/dastur_rejimi.dart';
import 'package:books_projects/pages/kitob_boblari.dart';
import 'package:books_projects/pages/kod_page.dart';
import 'package:books_projects/pages/language_page.dart';
import 'package:books_projects/pages/parolni_tiklash_page.dart';
import 'package:books_projects/pages/profil_page.dart';
import 'package:books_projects/pages/sing_up_page.dart';
import 'package:books_projects/pages/splash_page.dart';
import 'package:books_projects/pages/video_page.dart';
import 'package:books_projects/pages/yangi_parol_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPage(),
      routes: {
        LanguagePage.id: (context)=>const LanguagePage(),
        VideoPage.id: (context)=>const VideoPage(),
        SingUpPage.id: (context)=>const SingUpPage(),
        ProfilPage.id: (context)=> const ProfilPage(),
        ParolniTiklashPage.id: (context)=>const ParolniTiklashPage(),
        KodPage.id: (context)=>const KodPage(),
        YangiParolPage.id: (context)=>const YangiParolPage(),
        KitobBoblari.id: (context)=>const KitobBoblari(),
        BookPage.id: (context)=>const BookPage(),
        DasturRejimi.id: (context)=>const DasturRejimi(),
        DasturHaqida.id: (context)=>const DasturHaqida(),
      },
    );
  }
}
