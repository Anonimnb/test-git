import 'package:books_projects/pages/kitob_boblari.dart';
import 'package:books_projects/pages/kitob_xarid_qilish.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class ProfilgaKirish extends StatefulWidget {
  static const String id="profilga_kirish";
  const ProfilgaKirish({super.key});

  @override
  State<ProfilgaKirish> createState() => _ProfilgaKirishState();
}

class _ProfilgaKirishState extends State<ProfilgaKirish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {Navigator.pushReplacementNamed(context, KitobBoblari.id);},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 336),
              child: Container(
                height: 194,
                width: 353,
                child: Column(
                  children: [
                     Text("To'liq kitobni o'qish uchun profilga".tr(),style: TextStyle(fontSize: 20),),
                     Text("kirishingiz kerak".tr(),style: TextStyle(fontSize: 20),),
                    const SizedBox(height: 20,),
                     Text("Hozirda siz kitobning dastlabki 3 ta bobini bepul".tr(),style: TextStyle(fontSize: 14),),
                     Text("o'qishingiz mumkin".tr(),style: TextStyle(fontSize: 14),),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){Navigator.pushReplacementNamed(context, KitobXaridQilish.id);},
                      child: Container(
                        height: 56,
                        width: 353,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Image(image: AssetImage("assets/images/img_14.png"),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
