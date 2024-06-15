import 'package:books_projects/pages/profilga_kirish.dart';
import 'package:books_projects/pages/xaridni_tekshirish.dart';
import 'package:flutter/material.dart';
class KitobXaridQilish extends StatefulWidget {
  static const String id="kitop_xarid";
  const KitobXaridQilish({super.key});

  @override
  State<KitobXaridQilish> createState() => _KitobXaridQilishState();
}

class _KitobXaridQilishState extends State<KitobXaridQilish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {Navigator.pushReplacementNamed(context, ProfilgaKirish.id);},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 58,
                width: 700,
                child: const Column(
                  children: [
                    Text(
                      "To'liq kitobni o'qishingiz uchunxarid",style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "qilishingiz kerak",style: TextStyle(fontSize: 20),
                    ),
                  ],
                )
            ),
            const SizedBox(height: 20,),
            Container(
                height: 40,
                width: 400,
                child: const Column(
                  children: [
                    Text(
                      "Hozirda siz kitobning dastlabki 3 ta bobini bepul",style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "o'qishingiz mumkin",style: TextStyle(fontSize: 14),
                    ),
                  ],
                )
            ),
            Container(
              height: 273,
              width: 214,
              child: const Image(image: AssetImage("assets/images/img_15.png"),),
            ),
            const Text("Kitob narxi",style: TextStyle(fontSize: 16),),
            const Text("100 000 so'm",style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(bottom: 41,top: 210),
              child: GestureDetector(
                onTap: (){Navigator.pushReplacementNamed(context, XaridniTekshirish.id);},
                child: Container(
                  height: 56,
                  width: 353,
                  child: const Image(image: AssetImage("assets/images/img_16.png"),),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
