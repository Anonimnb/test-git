import 'package:books_projects/pages/kitob_boblari.dart';
import 'package:books_projects/pages/sing_up_page.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  static const String id = "video_page";

  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: 593,
                  height: 590,
                  child: const Image(
                    image: AssetImage("assets/images/img_4.png"),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 47),
                    child: Container(
                        height: 56,
                        width: 393,
                        child: const Center(
                            child: Text(
                              "Video qo'llanma",
                              style: TextStyle(fontSize: 20),
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 186),
                    child: Center(
                      child: Container(
                        width: 353,
                        height: 274,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Container(
                                width: 321,
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Image(
                                  image: AssetImage("assets/images/img_5.png"),
                                ),
                              ),
                            ),
                            const Text(
                              "Foydali nuqtalar ilovasi va to'lovi\namalga oshirish haqida qo'llanma",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 128),
                    child: Container(
                      width: 353,
                      height: 120,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, SingUpPage.id);
                            },
                            child: Container(
                              height: 56,
                              width: 353,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                              ),
                              child: const Center(
                                  child: Text(
                                    "Profilga Kirish",
                                    style: TextStyle(fontSize: 16),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, KitobBoblari.id);
                            },
                            child: Container(
                                height: 56,
                                width: 353,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Image(image: AssetImage("assets/images/img_7.png"),)
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
