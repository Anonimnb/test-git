import 'package:books_projects/model/bookResponse.dart';
import 'package:books_projects/pages/profilga_kirish.dart';
import 'package:books_projects/pages/video_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'dastur_haqida.dart';
import 'dastur_rejimi.dart';
import 'kitob_boblari.dart';
import 'language_page.dart';

class BookPage extends StatefulWidget {
  static const String id = "book_page";
  ResultItem? resultItem;

  BookPage({super.key, required this.resultItem}) : assert(resultItem != null);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.resultItem == null) {
      // Handle the case where resultItem is null (e.g., show an error message)
      return Text('Error: Book data not found');
    }

    return Scaffold(
        appBar: AppBar(
          title: Container(
            height: 40,
            width: 138,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.orange.shade100,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 6),
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Profilga kirish",
                  style: TextStyle(fontSize: 14, color: Colors.orange),
                )
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, ProfilgaKirish.id);
                },
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                ))
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 680,
                  width: 353,
                  child: SingleChildScrollView(
                    child: Text(
                      widget.resultItem?.translate?.ru?.context ?? 'No title available',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 82,
                  width: 393,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.orange,
                            size: 30,
                          )),
                       Expanded(
                         child: Text(
                           widget.resultItem?.translate?.ru?.title ?? 'No title available',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 16),
                                               ),
                       ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, KitobBoblari.id);
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black,
                            size: 30,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                    height: 150,
                    width: 320,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 30, right: 20, bottom: 20),
                          child: Row(
                            children: [
                              const Text(
                                "Foydali",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Container(
                                height: 55,
                                width: 55,
                                child: const Image(
                                    image:
                                        AssetImage("assets/images/img_3.png")),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const Text(
                                "Nuqtalar",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 48,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.orange,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, left: 60),
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                               Text(
                                "Profilga kirish".tr(),
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, DasturRejimi.id);
                },
                child: Container(
                  height: 54,
                  width: 320,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(110),
                            child: const Image(
                              image: AssetImage("assets/images/img.png"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                       Text(
                        "Dastur rejimi".tr(),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 2,
                  color: Colors.grey.shade200,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, LanguagePage.id);
                },
                child: Container(
                  height: 54,
                  width: 320,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(110),
                            child: const Image(
                              image: AssetImage("assets/images/Uzbekistan.png"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                       Text(
                        "Dastur tili".tr(),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 2,
                color: Colors.grey.shade200,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, DasturHaqida.id);
                },
                child: Container(
                  height: 54,
                  width: 320,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(110),
                            child: const Image(
                              image: AssetImage("assets/images/img_1.png"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                       Text(
                        "Dastur haqida".tr(),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 2,
                color: Colors.grey.shade200,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, VideoPage.id);
                },
                child: Container(
                  height: 54,
                  width: 320,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(110),
                            child: const Image(
                              image: AssetImage("assets/images/img_2.png"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                       Text(
                        "Video qo'llanma".tr(),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
