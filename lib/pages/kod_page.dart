import 'package:books_projects/pages/parolni_tiklash_page.dart';
import 'package:books_projects/pages/yangi_parol_page.dart';
import 'package:flutter/material.dart';
class KodPage extends StatefulWidget {
  static const String id="kod_page";
  const KodPage({super.key});

  @override
  State<KodPage> createState() => _KodPageState();
}

class _KodPageState extends State<KodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 47),
              child: Center(
                child: Container(
                  height: 56,
                  width: 393,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4, left: 8),
                        child: Container(
                            height: 48,
                            width: 48,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, ParolniTiklashPage.id);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  size: 28,
                                ))),
                      ),
                      const SizedBox(
                        width: 75,
                      ),
                      const Center(
                        child: Text(
                          "Kodni Kiriting",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
                child: const Column(
                  children: [
                    Text(
                      "Elektron pochtangizni kiriting va biz unga parolni",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Text(
                      "Tiklash uchun kod yuboramiz",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Container(height: 56,
                width: 271,
                child: Row(
                  children: [
                    Container(
                      height: 56,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 56,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 56,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 56,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 56,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 56,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 528,),
            GestureDetector(
              onTap: (){Navigator.pushReplacementNamed(context, YangiParolPage.id);},
              child: Container(
                  height: 56,
                  width: 353,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      ),
                  child: const Image(image: AssetImage("assets/images/img_10.png"),)),
            ),
          ],
        ),
      ),
    );
  }
}
