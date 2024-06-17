import 'package:books_projects/pages/kitob_boblari.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'book_page.dart';

class DasturHaqida extends StatefulWidget {
  static const String id = "dastur_haqida";

  const DasturHaqida({super.key});

  @override
  State<DasturHaqida> createState() => _DasturHaqidaState();
}

class _DasturHaqidaState extends State<DasturHaqida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Dastur haqida".tr(),
          style: const TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, KitobBoblari.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 13, left: 20),
          child: Container(
            height: 700,
            width: 353,
            child: const Text(
              "Foydali Nuqtalar mobil ilovasi inson salomatligini yaxshilash uchun akupunktura va akupressura usullarini o'rganishni osonlashtiradi. Ushbu ilova orqali siz tanadagi muayyan nuqtalar haqida ma'lumot olishingiz, ularni qanday topish va ularga qanday ta'sir ko'rsatish kerakligini o'rganishingiz mumkin. Ilova foydalanuvchilarga sog'lig'ini yaxshilash va turli kasalliklarni davolash uchun tabiiy va samarali usullarni taqdim etadi. Dasturda oson tushunarli ko'rsatmalar va vizual yordamchilar mavjud bo'lib, har qanday foydalanuvchi bu usullarni osongina qo'llashi mumkin.\n \nBizning maqsadimiz — har bir insonni sog'lom va baxtli hayot kechirishiga yordam berishdir\n \n Ushbu kitob mualliflik huquqi qonuni bilan himoyalangan. Kitobdan nusxa ko‘chirish, muallifning nomi eslatilmasdan taqriz keltirish, muallifning ruhsatisiz chop etish va har qanday usulda tarqatish qonun bilan taqiqlanadi.",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
