import 'package:books_projects/pages/kod_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class YangiParolPage extends StatefulWidget {
  static const String id="yangi_parol_page";
  const YangiParolPage({super.key});

  @override
  State<YangiParolPage> createState() => _YangiParolPageState();
}

class _YangiParolPageState extends State<YangiParolPage> {
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
                                      context, KodPage.id);
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
                          "Parolni Tiklash",
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
                child:  Column(
                  children: [
                    Text(
                      "Elektron pochtangizni kiriting va biz unga parolni".tr(),
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Text(
                      "Tiklash uchun kod yuboramiz".tr(),
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                )),
            const SizedBox(height: 41,),
            Container(
              height: 56,
              width: 353,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 1),
               ),
              child:  Padding(
                padding: EdgeInsets.only(top: 8, left: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Yangi parol".tr()),
                ),
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              height: 56,
              width: 353,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 1),
               ),
              child:  Padding(
                padding: EdgeInsets.only(top: 8, left: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Yangi parolni qaytadan kiriting".tr()),
                ),
              ),
            ),
            const SizedBox(height: 460,),
            GestureDetector(
              onTap: (){},
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
